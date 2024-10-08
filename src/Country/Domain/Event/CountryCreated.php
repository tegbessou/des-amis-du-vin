<?php

declare(strict_types=1);

namespace App\Country\Domain\Event;

use TegCorp\SharedKernelBundle\Domain\Event\DomainEventInterface;

final readonly class CountryCreated implements DomainEventInterface
{
    public function __construct(
        public string $countryId,
    ) {
    }
}
