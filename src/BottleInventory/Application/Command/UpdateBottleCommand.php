<?php

declare(strict_types=1);

namespace App\BottleInventory\Application\Command;

use App\Shared\Application\Command\CommandInterface;

/**
 * @implements CommandInterface<void>
 */
final class UpdateBottleCommand implements CommandInterface
{
    public function __construct(
        public string $bottleId,
        public string $name,
        public string $estateName,
        public string $type,
        public int $year,
        public array $grapeVarieties,
        public string $rate,
        public ?string $country,
        public ?float $price,
    ) {
    }
}
