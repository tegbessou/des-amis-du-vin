<?php

declare(strict_types=1);

namespace App\Tasting\Domain\ValueObject;

use App\Shared\Infrastructure\Webmozart\Assert;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Embeddable]
final readonly class ParticipantFullName
{
    #[ORM\Column(name: 'full_name', type: 'string', nullable: true)]
    private ?string $fullName;
    public function __construct(
        string $fullName,
    ) {
        Assert::string($fullName);
        Assert::maxLength($fullName, 255);

        $this->fullName = $fullName;
    }
    public static function fromString(
        string $fullName,
    ): self {
        return new self($fullName);
    }
    public function value(): ?string
    {
        return $this->fullName;
    }
}
