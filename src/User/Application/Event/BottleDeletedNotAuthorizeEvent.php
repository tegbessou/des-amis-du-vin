<?php

declare(strict_types=1);

namespace App\User\Application\Event;

use Symfony\Contracts\EventDispatcher\Event;

final class BottleDeletedNotAuthorizeEvent extends Event
{
    public function __construct(
        public string $ownerId,
    ) {
    }
}
