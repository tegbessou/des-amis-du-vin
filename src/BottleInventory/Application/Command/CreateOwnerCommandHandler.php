<?php

declare(strict_types=1);

namespace App\BottleInventory\Application\Command;

use App\BottleInventory\Domain\Entity\Owner;
use App\BottleInventory\Domain\Exception\OwnerAlreadyExistException;
use App\BottleInventory\Domain\Exception\OwnerDoesntExistInSecurityException;
use App\BottleInventory\Domain\Repository\OwnerReadRepositoryInterface;
use App\BottleInventory\Domain\Repository\OwnerWriteRepositoryInterface;
use App\BottleInventory\Domain\Service\AuthorizationService;
use App\BottleInventory\Domain\ValueObject\OwnerEmail;
use App\BottleInventory\Domain\ValueObject\OwnerFullName;
use App\Shared\Application\Command\AsCommandHandler;
use App\Shared\Domain\Service\DomainEventDispatcherInterface;

#[AsCommandHandler]
final readonly class CreateOwnerCommandHandler
{
    public function __construct(
        private OwnerWriteRepositoryInterface $ownerWriteRepository,
        private OwnerReadRepositoryInterface $ownerReadRepository,
        private AuthorizationService $authorizationService,
        private DomainEventDispatcherInterface $domainEventDispatcher,
    ) {
    }

    public function __invoke(CreateOwnerCommand $command): void
    {
        if (!$this->authorizationService->isExistUser(OwnerEmail::fromString($command->email))) {
            throw new OwnerDoesntExistInSecurityException($command->email);
        }

        if ($this->ownerReadRepository->ofEmail(OwnerEmail::fromString($command->email)) !== null) {
            throw new OwnerAlreadyExistException($command->fullName);
        }

        $owner = Owner::create(
            $this->ownerWriteRepository->nextIdentity(),
            OwnerEmail::fromString($command->email),
            OwnerFullName::fromString($command->fullName),
        );

        $this->domainEventDispatcher->dispatch($owner);

        $this->ownerWriteRepository->add(
            $owner,
        );
    }
}
