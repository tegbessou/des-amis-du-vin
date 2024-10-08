<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\Symfony\Messenger\Message;

use App\Tasting\Domain\Event\InvitationCreated;

final readonly class InvitationCreatedMessage
{
    public function __construct(
        public string $invitationId,
        public string $targetEmail,
        public string $ownerEmail,
        public string $bottleName,
    ) {
    }

    public static function fromEvent(InvitationCreated $event): self
    {
        return new self(
            $event->id,
            $event->targetEmail,
            $event->ownerEmail,
            $event->bottleName,
        );
    }
}
