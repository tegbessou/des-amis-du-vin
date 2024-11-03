<?php

declare(strict_types=1);

namespace App\BottleInventory\Application\ReadModel;

use Doctrine\ODM\MongoDB\Mapping\Annotations as MongoDB;

#[MongoDB\Document]
class BottleList
{
    public function __construct(
        #[MongoDB\Id(strategy: 'UUID')]
        public string $id,
        #[MongoDB\Field(type: 'string')]
        public string $name,
        #[MongoDB\Field(type: 'string')]
        public string $estateName,
        #[MongoDB\Field(type: 'string')]
        public string $rate,
        #[MongoDB\Field(type: 'int')]
        public int $year,
        #[MongoDB\Field(type: 'string')]
        public string $wineType,
        #[MongoDB\Field(type: 'string')]
        public string $createdAt,
        #[MongoDB\Field(type: 'string')]
        public string $ownerId,
        #[MongoDB\Field(type: 'string', nullable: true)]
        public ?string $picture = null,
    ) {
    }
}
