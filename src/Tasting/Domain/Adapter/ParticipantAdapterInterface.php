<?php

declare(strict_types=1);

namespace App\Tasting\Domain\Adapter;

use App\Tasting\Domain\ValueObject\ParticipantId;
use App\Tasting\Domain\ValueObject\User;

interface ParticipantAdapterInterface
{
    public function ofId(ParticipantId $id): ?User;
}
