<?php

declare(strict_types=1);

namespace App\Tasting\Domain\Event;

use TegCorp\SharedKernelBundle\Domain\Event\DomainEventInterface;

final readonly class InvitationSent implements DomainEventInterface
{
    public function __construct(
        public string $invitationId,
        public \DateTimeImmutable $sentAt,
    ) {
    }
}
