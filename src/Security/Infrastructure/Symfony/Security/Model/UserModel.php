<?php

declare(strict_types=1);

namespace App\Security\Infrastructure\Symfony\Security\Model;

use Symfony\Component\Security\Core\User\UserInterface;

final class UserModel implements UserInterface
{
    public function __construct(
        public string $id,
        public string $email,
    ) {
    }

    #[\Override]
    public function getRoles(): array
    {
        return [];
    }

    #[\Override]
    public function eraseCredentials(): void
    {
    }

    #[\Override]
    public function getUserIdentifier(): string
    {
        return $this->email;
    }
}
