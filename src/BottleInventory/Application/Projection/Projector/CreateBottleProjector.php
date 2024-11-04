<?php

declare(strict_types=1);

namespace App\BottleInventory\Application\Projection\Projector;

use App\BottleInventory\Application\Adapter\BottleAdapterInterface;
use App\BottleInventory\Application\ReadModel\Bottle;
use App\BottleInventory\Domain\Adapter\UserAdapterInterface;
use App\BottleInventory\Domain\ValueObject\UserId;

final readonly class CreateBottleProjector
{
    public function __construct(
        private BottleAdapterInterface $bottleAdapter,
        private UserAdapterInterface $userAdapter,
    ) {
    }

    public function project(
        string $bottleId,
        string $name,
        string $estateName,
        string $wineType,
        int $year,
        string $rate,
        array $grapeVarieties,
        string $createdAt,
        string $ownerId,
        ?string $country = null,
        ?float $price = null,
    ): void {
        $owner = $this->userAdapter->ofId(
            UserId::fromString($ownerId),
        );

        if ($owner === null) {
            throw new \LogicException('Owner not found');
        }

        $bottle = new Bottle(
            $bottleId,
            $name,
            $estateName,
            $rate,
            $year,
            $wineType,
            $createdAt,
            $grapeVarieties,
            $owner->id()->value(),
            $owner->name()->value(),
            $country,
            $price,
        );

        $this->bottleAdapter->add($bottle);
    }
}