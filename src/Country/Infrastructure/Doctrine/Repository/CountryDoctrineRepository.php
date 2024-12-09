<?php

declare(strict_types=1);

namespace App\Country\Infrastructure\Doctrine\Repository;

use App\Country\Domain\Entity\Country;
use App\Country\Domain\Repository\CountryRepositoryInterface;
use App\Country\Domain\ValueObject\CountryId;
use App\Country\Domain\ValueObject\CountryName;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Uid\Uuid;
use TegCorp\SharedKernelBundle\Infrastructure\Doctrine\ORM\DoctrineRepository;

/**
 * @extends DoctrineRepository<Country>
 */
final class CountryDoctrineRepository extends DoctrineRepository implements CountryRepositoryInterface
{
    private const ENTITY_CLASS = Country::class;
    private const ALIAS = 'country';

    public function __construct(EntityManagerInterface $entityManager)
    {
        parent::__construct($entityManager, self::ENTITY_CLASS, self::ALIAS);
    }

    #[\Override]
    public function ofName(
        CountryName $name,
    ): ?Country {
        return $this->entityManager->getRepository(self::ENTITY_CLASS)->findOneBy(['name.value' => $name->value()]);
    }

    #[\Override]
    public function nextIdentity(): CountryId
    {
        return CountryId::fromString(
            Uuid::v4()->toRfc4122()
        );
    }

    #[\Override]
    public function add(Country $country): void
    {
        $this->entityManager->persist($country);
        $this->entityManager->flush();
    }
}
