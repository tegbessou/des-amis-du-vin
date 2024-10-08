<?php

declare(strict_types=1);

namespace App\BottleInventory\Domain\Entity;

use App\BottleInventory\Domain\Event\BottleCreated;
use App\BottleInventory\Domain\Event\BottleDeleted;
use App\BottleInventory\Domain\Event\BottlePictureAdded;
use App\BottleInventory\Domain\Event\BottleTasted;
use App\BottleInventory\Domain\Event\BottleUpdated;
use App\BottleInventory\Domain\ValueObject\BottleCountry;
use App\BottleInventory\Domain\ValueObject\BottleEstateName;
use App\BottleInventory\Domain\ValueObject\BottleGrapeVarieties;
use App\BottleInventory\Domain\ValueObject\BottleId;
use App\BottleInventory\Domain\ValueObject\BottleName;
use App\BottleInventory\Domain\ValueObject\BottlePicture;
use App\BottleInventory\Domain\ValueObject\BottlePrice;
use App\BottleInventory\Domain\ValueObject\BottleRate;
use App\BottleInventory\Domain\ValueObject\BottleSavedAt;
use App\BottleInventory\Domain\ValueObject\BottleTastedAt;
use App\BottleInventory\Domain\ValueObject\BottleWineType;
use App\BottleInventory\Domain\ValueObject\BottleYear;
use Doctrine\ORM\Mapping as ORM;
use TegCorp\SharedKernelBundle\Domain\Entity\EntityDomainEventTrait;
use TegCorp\SharedKernelBundle\Domain\Entity\EntityWithDomainEventInterface;

#[ORM\Entity]
final class Bottle implements EntityWithDomainEventInterface
{
    use EntityDomainEventTrait;

    #[ORM\Embedded(columnPrefix: false)]
    private ?BottlePicture $picture = null;

    public function __construct(
        #[ORM\Embedded(columnPrefix: false)]
        private BottleId $id,
        #[ORM\Embedded(columnPrefix: false)]
        private BottleName $name,
        #[ORM\Embedded(columnPrefix: false)]
        private BottleEstateName $estateName,
        #[ORM\Embedded(columnPrefix: false)]
        private BottleWineType $wineType,
        #[ORM\Embedded(columnPrefix: false)]
        private BottleYear $year,
        #[ORM\Embedded(columnPrefix: false)]
        private BottleGrapeVarieties $grapeVarieties,
        #[ORM\Embedded(columnPrefix: false)]
        private BottleRate $rate,
        #[ORM\ManyToOne(targetEntity: Owner::class)]
        #[ORM\JoinColumn(name: 'owner_id', referencedColumnName: 'id')]
        private Owner $owner,
        #[ORM\Embedded(columnPrefix: false)]
        private ?BottleCountry $country = null,
        #[ORM\Embedded(columnPrefix: false)]
        private ?BottlePrice $price = null,
        #[ORM\Embedded(columnPrefix: false)]
        private ?BottleSavedAt $savedAt = null,
        #[ORM\Embedded(columnPrefix: false)]
        private ?BottleTastedAt $tastedAt = null,
    ) {
    }

    public static function create(
        BottleId $id,
        BottleName $name,
        BottleEstateName $estateName,
        BottleWineType $wineType,
        BottleYear $year,
        BottleGrapeVarieties $grapeVarieties,
        BottleRate $rate,
        Owner $owner,
        ?BottleCountry $country = null,
        ?BottlePrice $price = null,
    ): self {
        $bottle = new self(
            $id,
            $name,
            $estateName,
            $wineType,
            $year,
            $grapeVarieties,
            $rate,
            $owner,
            $country,
            $price,
            BottleSavedAt::create(),
        );

        self::recordEvent(
            new BottleCreated(
                $bottle->id->value(),
                $bottle->owner->email()->value(),
            )
        );

        return $bottle;
    }

    public function addPicture(BottlePicture $picture): Bottle
    {
        $this->picture = $picture;

        self::recordEvent(
            new BottlePictureAdded(
                $this->id->value(),
                $this->owner->email()->value(),
            )
        );

        return $this;
    }

    public function taste(): Bottle
    {
        $this->tastedAt = BottleTastedAt::create(
            new \DateTimeImmutable(),
        );

        self::recordEvent(
            new BottleTasted(
                $this->id->value(),
                $this->owner->email()->value()
            )
        );

        return $this;
    }

    public function delete(): void
    {
        self::recordEvent(
            new BottleDeleted(
                $this->id->value(),
                $this->owner->email()->value(),
            )
        );
    }

    public function update(
        BottleName $name,
        BottleEstateName $estateName,
        BottleWineType $wineType,
        BottleYear $year,
        BottleGrapeVarieties $grapeVarieties,
        BottleRate $rate,
        ?BottleCountry $country = null,
        ?BottlePrice $price = null,
    ): void {
        $this->name = $name;
        $this->estateName = $estateName;
        $this->wineType = $wineType;
        $this->year = $year;
        $this->grapeVarieties = $grapeVarieties;
        $this->rate = $rate;
        $this->country = $country;
        $this->price = $price;

        self::recordEvent(
            new BottleUpdated(
                $this->id->value(),
                $this->owner->email()->value(),
            )
        );
    }

    public function id(): BottleId
    {
        return $this->id;
    }

    public function name(): BottleName
    {
        return $this->name;
    }

    public function estateName(): BottleEstateName
    {
        return $this->estateName;
    }

    public function wineType(): BottleWineType
    {
        return $this->wineType;
    }

    public function year(): BottleYear
    {
        return $this->year;
    }

    public function grapeVarieties(): BottleGrapeVarieties
    {
        return $this->grapeVarieties;
    }

    public function rate(): BottleRate
    {
        return $this->rate;
    }

    public function picture(): ?BottlePicture
    {
        return $this->picture;
    }

    public function owner(): Owner
    {
        return $this->owner;
    }

    public function country(): ?BottleCountry
    {
        return $this->country;
    }

    public function price(): ?BottlePrice
    {
        return $this->price;
    }

    public function savedAt(): ?BottleSavedAt
    {
        return $this->savedAt;
    }

    public function tastedAt(): ?BottleTastedAt
    {
        return $this->tastedAt;
    }
}
