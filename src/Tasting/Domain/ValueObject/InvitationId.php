<?php

declare(strict_types=1);

namespace App\Tasting\Domain\ValueObject;

use Doctrine\ORM\Mapping as ORM;
use TegCorp\SharedKernelBundle\Infrastructure\Webmozart\Assert;

#[ORM\Embeddable]
final readonly class InvitationId
{
    #[ORM\Id]
    #[ORM\Column(name: 'id', type: 'uuid', unique: true)]
    private string $value;

    public function __construct(
        string $value,
    ) {
        Assert::minLength($value, 36);
        Assert::maxLength($value, 36);
        Assert::uuid($value);

        $this->value = $value;
    }

    public static function fromString(string $value): self
    {
        return new self($value);
    }

    public function value(): string
    {
        return $this->value;
    }
}
