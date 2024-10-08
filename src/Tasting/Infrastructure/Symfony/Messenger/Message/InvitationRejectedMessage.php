<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\Symfony\Messenger\Message;

use App\Tasting\Domain\Event\InvitationRejected;

final readonly class InvitationRejectedMessage implements InvitationStatusChangedInterface
{
    public function __construct(
        private string $invitationId,
    ) {
    }

    public static function fromEvent(InvitationRejected $event): self
    {
        return new self(
            $event->invitationId,
        );
    }

    #[\Override]
    public function getInvitationId(): string
    {
        return $this->invitationId;
    }
}
