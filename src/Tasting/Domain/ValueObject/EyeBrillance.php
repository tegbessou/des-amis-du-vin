<?php

declare(strict_types=1);

namespace App\Tasting\Domain\ValueObject;

use App\Tasting\Domain\Enum\Brillance;

final readonly class EyeBrillance
{
    public function __construct(
        private Brillance $value,
    ) {
    }

    public static function fromString(string $value): self
    {
        return new self(Brillance::from($value));
    }

    public function value(): string
    {
        return $this->value->value;
    }
}
