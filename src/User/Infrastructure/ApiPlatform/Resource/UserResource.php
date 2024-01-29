<?php

declare(strict_types=1);

namespace App\User\Infrastructure\ApiPlatform\Resource;

use ApiPlatform\Metadata\ApiProperty;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\Post;
use App\User\Infrastructure\ApiPlatform\State\Processor\CreateUserProcessor;
use Symfony\Component\Uid\AbstractUid;
use Symfony\Component\Validator\Constraints as Assert;

#[ApiResource(
    operations: [
        new Post(
            '/users',
            security: 'is_granted("PUBLIC_ACCESS")',
            output: false,
            processor: CreateUserProcessor::class,
        ),
    ]
)]
class UserResource
{
    public function __construct(
        #[ApiProperty(readable: false, writable: false, identifier: true)]
        public ?AbstractUid $id = null,
        #[ApiProperty]
        #[Assert\NotBlank]
        #[Assert\Email]
        public ?string $email = null,
    ) {
    }
}
