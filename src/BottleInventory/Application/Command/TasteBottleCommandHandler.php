<?php

declare(strict_types=1);

namespace App\BottleInventory\Application\Command;

use App\BottleInventory\Domain\Exception\BottleDoesntExistException;
use App\BottleInventory\Domain\Exception\TasteBottleNotAuthorizeForThisUserException;
use App\BottleInventory\Domain\Repository\BottleRepositoryInterface;
use App\BottleInventory\Domain\Service\AuthorizationService;
use App\BottleInventory\Domain\ValueObject\BottleId;
use App\Shared\Application\Command\AsCommandHandler;
use App\Shared\Domain\Service\DomainEventDispatcherInterface;

#[AsCommandHandler]
final readonly class TasteBottleCommandHandler
{
    public function __construct(
        private BottleRepositoryInterface $bottleRepository,
        private DomainEventDispatcherInterface $eventDispatcher,
        private AuthorizationService $authorizationService,
    ) {
    }

    public function __invoke(
        TasteBottleCommand $command,
    ): void {
        $bottle = $this->bottleRepository->ofId(
            BottleId::fromString($command->id),
        );

        if ($bottle === null) {
            throw new BottleDoesntExistException($command->id);
        }

        if ($this->authorizationService->isCurrentUserOwnerOfTheBottle($bottle) === false) {
            throw new TasteBottleNotAuthorizeForThisUserException();
        }

        $bottle->taste();

        $this->eventDispatcher->dispatch($bottle);

        $this->bottleRepository->update($bottle);
    }
}