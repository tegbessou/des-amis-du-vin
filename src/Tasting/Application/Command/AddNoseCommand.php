<?php

declare(strict_types=1);

namespace App\Tasting\Application\Command;

use TegCorp\SharedKernelBundle\Application\Command\CommandInterface;

/**
 * @implements CommandInterface<void>
 */
final readonly class AddNoseCommand implements CommandInterface
{
    public function __construct(
        public string $sheetId,
        public string $impression,
        public string $intensite,
        public string $arome,
        public string $observation,
    ) {
    }
}
