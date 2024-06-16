<?php

declare(strict_types=1);

namespace App\BottleInventory\Infrastructure\Symfony\Messenger\ExternalMessage;

final readonly class UserCreatedMessage
{
    public function __construct(
        public string $email,
        public string $fullName,
    ) {
    }
}
