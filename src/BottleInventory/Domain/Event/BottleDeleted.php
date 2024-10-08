<?php

declare(strict_types=1);

namespace App\BottleInventory\Domain\Event;

use TegCorp\SharedKernelBundle\Domain\Event\DomainEventInterface;

final readonly class BottleDeleted implements DomainEventInterface
{
    public function __construct(
        public string $bottleId,
        public string $ownerId,
    ) {
    }
}
