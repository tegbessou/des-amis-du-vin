<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\Symfony\Messenger\ExternalMessage;

final readonly class BottleTastedMessage
{
    public function __construct(
        public string $bottleName,
        public string $bottleWineType,
        public string $ownerEmail,
    ) {
    }
}
