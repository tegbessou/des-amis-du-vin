<?php

declare(strict_types=1);

namespace App\Tasting\Domain\Service;

use App\Tasting\Domain\Entity\Invitation;
use App\Tasting\Domain\Entity\Participant;
use App\Tasting\Domain\Entity\Tasting;
use App\Tasting\Domain\Event\TastingParticipantsInvited;
use App\Tasting\Domain\Exception\OwnerCannotBeInvitedToTastingException;
use App\Tasting\Domain\Exception\ParticipantsAlreadyInvitedException;
use App\Tasting\Domain\Exception\ParticipantsAlreadyParticipatingException;
use App\Tasting\Domain\Repository\InvitationRepositoryInterface;
use TegCorp\SharedKernelBundle\Infrastructure\Webmozart\Assert;

final readonly class InviteParticipant
{
    public function __construct(
        private InvitationRepositoryInterface $invitationRepository,
    ) {
    }

    public function inviteParticipants(
        Tasting $tasting,
        array $participants,
    ): void {
        Assert::allIsInstanceOf($participants, Participant::class);

        $this->canInviteParticipants($tasting, $participants);

        /** @var Participant $participant */
        foreach ($participants as $participant) {
            $invitation = Invitation::create(
                $this->invitationRepository->nextIdentity(),
                $tasting,
                $participant,
                GetInvitationLink::getLink(),
            );

            $tasting->invitations()->add($invitation);
        }

        $tasting::recordEvent(
            new TastingParticipantsInvited(
                $tasting->id()->value(),
            )
        );
    }

    private function canInviteParticipants(
        Tasting $tasting,
        array $participants,
    ): void {
        $this->isOwnerInList($participants, $tasting);
        $this->areAlreadyInvited($participants, $tasting);
        $this->areAlreadyParticipating($participants, $tasting);
    }

    private function isOwnerInList(array $participants, Tasting $tasting): void
    {
        if ($participants === []) {
            return;
        }

        foreach ($participants as $participant) {
            if ($tasting->owner()->id()->value() !== $participant->id()->value()) {
                continue;
            }

            throw new OwnerCannotBeInvitedToTastingException();
        }
    }

    private function areAlreadyInvited(array $participants, Tasting $tasting): void
    {
        $participantsAlreadyInvited = [];

        /** @var Participant $participant */
        foreach ($participants as $participant) {
            if (!$tasting->participantAlreadyInvited($participant)) {
                continue;
            }

            $participantsAlreadyInvited[] = $participant->fullName()->value();
        }

        if ($participantsAlreadyInvited === []) {
            return;
        }

        throw new ParticipantsAlreadyInvitedException($participantsAlreadyInvited);
    }

    private function areAlreadyParticipating(array $participants, Tasting $tasting): void
    {
        $participantsAlreadyParticipating = [];

        /** @var Participant $participant */
        foreach ($participants as $participant) {
            if (!$tasting->participants()->contains($participant)) {
                continue;
            }

            $participantsAlreadyParticipating[] = $participant->fullName()->value();
        }

        if ($participantsAlreadyParticipating === []) {
            return;
        }

        throw new ParticipantsAlreadyParticipatingException($participantsAlreadyParticipating);
    }
}
