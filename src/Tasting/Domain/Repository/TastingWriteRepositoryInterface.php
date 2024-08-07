<?php

declare(strict_types=1);

namespace App\Tasting\Domain\Repository;

use App\Tasting\Domain\Entity\Tasting;
use App\Tasting\Domain\ValueObject\TastingId;

interface TastingWriteRepositoryInterface
{
    public function ofId(TastingId $id): ?Tasting;

    public function add(Tasting $tasting): void;

    public function nextIdentity(): TastingId;
}
