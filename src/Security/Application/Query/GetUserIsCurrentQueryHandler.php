<?php

declare(strict_types=1);

namespace App\Security\Application\Query;

use App\Security\Domain\Entity\User;
use App\Security\Domain\Repository\UserReadRepositoryInterface;
use App\Security\Domain\Service\GetUserAuthenticatedInterface;
use App\Security\Domain\ValueObject\UserIsCurrent;
use App\Shared\Application\Query\AsQueryHandler;

#[AsQueryHandler]
final readonly class GetUserIsCurrentQueryHandler
{
    public function __construct(
        private UserReadRepositoryInterface $userReadRepository,
        private GetUserAuthenticatedInterface $getUserAuthenticated,
    ) {
    }

    public function __invoke(GetUserIsCurrentQuery $getUserIsCurrentQuery): ?UserIsCurrent
    {
        $user = $this->userReadRepository->ofEmail($getUserIsCurrentQuery->email);

        if ($user === null) {
            return null;
        }

        return UserIsCurrent::create(
            $user->email(),
            $this->isCurrentOrService($user),
        );
    }

    private function isCurrentOrService(
        User $user,
    ): bool {
        return $this->getUserAuthenticated->getUser()->email()->equals($user->email())
            || str_contains($this->getUserAuthenticated->getUser()->email()->value(), 'services')
        ;
    }
}
