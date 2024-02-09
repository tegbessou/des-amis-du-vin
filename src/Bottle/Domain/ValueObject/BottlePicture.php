<?php

declare(strict_types=1);

namespace App\Bottle\Domain\ValueObject;

use App\Shared\Infrastructure\Webmozart\Assert;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Embeddable]
final readonly class BottlePicture
{
    #[ORM\Column(name: 'picture', type: 'string', length: 255, nullable: true)]
    private string $path;

    public function __construct(
        string $path,
    ) {
        Assert::string($path);
        Assert::lengthBetween($path, 1, 255);
        Assert::picture($path);

        $this->path = $path;
    }

    public static function fromString(
        string $path,
    ): self {
        return new self($path);
    }

    public function path(): string
    {
        return $this->path;
    }
}
