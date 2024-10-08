<?php

declare(strict_types=1);

namespace App\BottleInventory\Domain\Service;

use App\BottleInventory\Domain\Adapter\UserAdapterInterface;
use App\BottleInventory\Domain\Entity\Bottle;
use App\BottleInventory\Domain\ValueObject\OwnerEmail;

final readonly class Authorization
{
    public function __construct(
        private UserAdapterInterface $userRepository,
    ) {
    }

    public function isCurrentUserOwnerOfTheBottle(
        Bottle $bottle,
    ): bool {
        $user = $this->userRepository->ofEmail($bottle->owner()->email());

        if ($user === null) {
            return false;
        }

        return $user->isCurrentUser()
            && $bottle->owner()->email()->value() === $user->email()->value()
        ;
    }

    public function isExistUser(
        OwnerEmail $ownerEmail,
    ): bool {
        return $this->userRepository->ofEmail($ownerEmail) !== null;
    }
}
