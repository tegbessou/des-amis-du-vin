<?php

declare(strict_types=1);

namespace App\Country\Domain\Entity;

use App\Country\Domain\Event\CountryCreatedEvent;
use App\Country\Domain\ValueObject\CountryId;
use App\Country\Domain\ValueObject\CountryName;
use App\Shared\Domain\Entity\EntityDomainEventTrait;
use App\Shared\Domain\Entity\EntityWithDomainEventInterface;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity]
final class Country implements EntityWithDomainEventInterface
{
    use EntityDomainEventTrait;

    public function __construct(
        #[ORM\Embedded(columnPrefix: false)]
        private CountryId $id,
        #[ORM\Embedded(columnPrefix: false)]
        private CountryName $name,
    ) {
    }

    public static function create(
        CountryId $id,
        CountryName $name,
    ): self {
        $country = new self(
            $id,
            $name,
        );

        $country::recordEvent(
            new CountryCreatedEvent(
                $country->id->value(),
            )
        );

        return $country;
    }

    public function id(): CountryId
    {
        return $this->id;
    }

    public function name(): CountryName
    {
        return $this->name;
    }
}
