<?php

declare(strict_types=1);

namespace App\Bottle\Infrastructure\ApiPlatform\Resource;

use ApiPlatform\Metadata\ApiProperty;
use ApiPlatform\Metadata\ApiResource;

#[ApiResource]
final class Bottle
{
    public function __construct(
        #[ApiProperty(identifier: true)]
        public string $id = '1234',
    ) {
    }
}