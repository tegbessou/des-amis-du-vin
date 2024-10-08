<?php

declare(strict_types=1);

namespace App\BottleInventory\Application\Command;

use App\BottleInventory\Domain\Exception\UpdateBottleDoesntExistException;
use App\BottleInventory\Domain\Exception\UpdateBottleNotAuthorizeForThisUserException;
use App\BottleInventory\Domain\Repository\BottleRepositoryInterface;
use App\BottleInventory\Domain\Service\Authorization;
use App\BottleInventory\Domain\Service\BottleValidator;
use App\BottleInventory\Domain\ValueObject\BottleCountry;
use App\BottleInventory\Domain\ValueObject\BottleEstateName;
use App\BottleInventory\Domain\ValueObject\BottleGrapeVarieties;
use App\BottleInventory\Domain\ValueObject\BottleId;
use App\BottleInventory\Domain\ValueObject\BottleName;
use App\BottleInventory\Domain\ValueObject\BottlePrice;
use App\BottleInventory\Domain\ValueObject\BottleRate;
use App\BottleInventory\Domain\ValueObject\BottleWineType;
use App\BottleInventory\Domain\ValueObject\BottleYear;
use TegCorp\SharedKernelBundle\Application\Command\AsCommandHandler;
use TegCorp\SharedKernelBundle\Domain\Service\DomainEventDispatcherInterface;

#[AsCommandHandler]
final readonly class UpdateBottleCommandHandler
{
    public function __construct(
        private BottleRepositoryInterface $bottleRepository,
        private DomainEventDispatcherInterface $eventDispatcher,
        private BottleValidator $bottleValidator,
        private Authorization $authorizationService,
    ) {
    }

    public function __invoke(
        UpdateBottleCommand $command,
    ): void {
        $this->bottleValidator->validate(
            $command->country,
            $command->grapeVarieties,
        );

        $bottle = $this->bottleRepository->ofId(
            BottleId::fromString($command->bottleId),
        );

        if ($bottle === null) {
            throw new UpdateBottleDoesntExistException($command->bottleId);
        }

        if (
            $this->authorizationService->isCurrentUserOwnerOfTheBottle($bottle) === false
        ) {
            throw new UpdateBottleNotAuthorizeForThisUserException();
        }

        $bottle->update(
            BottleName::fromString($command->name),
            BottleEstateName::fromString($command->estateName),
            BottleWineType::fromString($command->type),
            BottleYear::fromInt($command->year),
            BottleGrapeVarieties::fromArray($command->grapeVarieties),
            BottleRate::fromString($command->rate),
            $command->country !== null ? BottleCountry::fromString($command->country) : null,
            $command->price !== null ? BottlePrice::fromFloat($command->price) : null
        );

        $this->eventDispatcher->dispatch($bottle);

        $this->bottleRepository->update($bottle);
    }
}
