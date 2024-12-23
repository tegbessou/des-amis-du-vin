<?php

declare(strict_types=1);

namespace App\Tasting\Application\Command;

use App\Tasting\Application\Exception\OwnerDoesntExistException;
use App\Tasting\Application\Service\MailerInterface;
use App\Tasting\Application\Service\NotificationInterface;
use App\Tasting\Domain\Adapter\ParticipantAdapterInterface;
use App\Tasting\Domain\Exception\InvitationDoesntExistException;
use App\Tasting\Domain\Exception\TastingDoesntExistException;
use App\Tasting\Domain\Repository\TastingRepositoryInterface;
use App\Tasting\Domain\ValueObject\InvitationId;
use App\Tasting\Domain\ValueObject\ParticipantId;
use App\Tasting\Domain\ValueObject\TastingId;
use TegCorp\SharedKernelBundle\Application\Command\AsCommandHandler;
use TegCorp\SharedKernelBundle\Domain\Service\DomainEventDispatcherInterface;

#[AsCommandHandler]
final readonly class SendInvitationCommandHandler
{
    public function __construct(
        private TastingRepositoryInterface $tastingRepository,
        private MailerInterface $emailService,
        private NotificationInterface $notificationService,
        private DomainEventDispatcherInterface $eventDispatcher,
        private ParticipantAdapterInterface $userAdapter,
    ) {
    }

    public function __invoke(SendInvitationCommand $command): void
    {
        $tasting = $this->tastingRepository->ofId(
            TastingId::fromString($command->tastingId),
        );

        if ($tasting === null) {
            throw new TastingDoesntExistException($command->tastingId);
        }

        $invitation = $tasting->invitations()->find(
            InvitationId::fromString($command->invitationId),
        );

        if ($invitation === null) {
            throw new InvitationDoesntExistException($command->invitationId);
        }

        $owner = $this->userAdapter->ofId(
            ParticipantId::fromString($tasting->ownerId()->value()),
        );

        if ($owner === null) {
            throw new OwnerDoesntExistException($tasting->ownerId()->value());
        }

        $tasting->sendInvitation($invitation);

        $this->emailService->sendInvitationEmail(
            $owner->id()->value(),
            $owner->fullName()?->value() ?? throw new \LogicException(),
            $invitation->target()->value(),
            $tasting->bottle()->name(),
            $invitation->link()->value(),
        );

        $this->notificationService->sendInvitationNotification(
            $owner->fullName()->value(),
            $invitation->target()->value(),
            $tasting->bottle()->name(),
        );

        $this->tastingRepository->update($tasting);

        $this->eventDispatcher->dispatch($tasting);
    }
}
