<?php

declare(strict_types=1);

namespace App\Security\Infrastructure\Symfony\Security\Service;

use App\Security\Domain\Entity\User;
use App\Security\Domain\Service\GetUserAuthenticatedInterface;
use App\Security\Domain\ValueObject\UserEmail;
use App\Security\Domain\ValueObject\UserId;
use App\Security\Infrastructure\Symfony\Security\Model\UserModel as SymfonyUser;
use Symfony\Bundle\SecurityBundle\Security;

final readonly class GetUserAuthenticatedService implements GetUserAuthenticatedInterface
{
    public function __construct(
        private Security $security,
    ) {
    }

    #[\Override]
    public function getUser(): User
    {
        /** @var SymfonyUser|null $user */
        $user = $this->security->getUser();

        if ($user === null) {
            throw new \LogicException();
        }

        return new User(
            UserId::fromString($user->id),
            UserEmail::fromString($user->email),
        );
    }
}
