<?php

declare(strict_types=1);

namespace App\BottleInventory\Application\Command;

use App\Shared\Application\Command\CommandInterface;

/**
 * @implements CommandInterface<void>
 */
final readonly class TasteBottleCommand implements CommandInterface
{
    public function __construct(
        public string $id,
    ) {
    }
}
