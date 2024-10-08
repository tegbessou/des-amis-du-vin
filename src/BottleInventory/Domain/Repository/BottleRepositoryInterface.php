<?php

declare(strict_types=1);

namespace App\BottleInventory\Domain\Repository;

use App\BottleInventory\Domain\Entity\Bottle;
use App\BottleInventory\Domain\ValueObject\BottleEstateName;
use App\BottleInventory\Domain\ValueObject\BottleId;
use App\BottleInventory\Domain\ValueObject\BottleName;
use App\BottleInventory\Domain\ValueObject\BottleRate;
use App\BottleInventory\Domain\ValueObject\BottleSavedAt;
use App\BottleInventory\Domain\ValueObject\BottleWineType;
use App\BottleInventory\Domain\ValueObject\BottleYear;
use TegCorp\SharedKernelBundle\Domain\Repository\RepositoryInterface;

/**
 * @extends RepositoryInterface<Bottle>
 */
interface BottleRepositoryInterface extends RepositoryInterface
{
    public function ofId(BottleId $bottleId): ?Bottle;

    public function sortName(): self;

    public function withName(BottleName $name): self;

    public function withEstateName(BottleEstateName $estateName): self;

    public function withYear(BottleYear $year): self;

    public function withRate(BottleRate $rate): self;

    public function savedAt(BottleSavedAt $savedAt): self;

    public function withWineType(BottleWineType $wineType): self;

    public function add(Bottle $bottle): void;

    public function nextIdentity(): BottleId;

    public function update(Bottle $bottle): void;

    public function delete(Bottle $bottle): void;
}
