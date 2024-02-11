<?php

declare(strict_types=1);

namespace App\Bottle\Domain\ValueObject;

use App\Shared\Infrastructure\Webmozart\Assert;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Embeddable]
final readonly class BottleCountry
{
    #[ORM\Column(name: 'country', type: 'string', length: 255, nullable: true)]
    private ?string $value;

    public function __construct(
        string $value,
    ) {
        Assert::string($value);
        Assert::lengthBetween($value, 1, 255);

        $this->value = $value;
    }

    public static function fromString(string $value): self
    {
        return new self($value);
    }

    public function value(): ?string
    {
        return $this->value;
    }
}
