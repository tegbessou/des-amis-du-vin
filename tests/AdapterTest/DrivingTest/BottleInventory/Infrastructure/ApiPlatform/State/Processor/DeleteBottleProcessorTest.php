<?php

declare(strict_types=1);

namespace AdapterTest\DrivingTest\BottleInventory\Infrastructure\ApiPlatform\State\Processor;

use App\BottleInventory\Application\Projection\CreateBottleListProjection;
use App\BottleInventory\Application\Projection\CreateBottleProjection;
use App\BottleInventory\Domain\Entity\Bottle;
use App\BottleInventory\Domain\Repository\BottleRepositoryInterface;
use App\BottleInventory\Domain\ValueObject\BottleCountry;
use App\BottleInventory\Domain\ValueObject\BottleEstateName;
use App\BottleInventory\Domain\ValueObject\BottleGrapeVarieties;
use App\BottleInventory\Domain\ValueObject\BottleId;
use App\BottleInventory\Domain\ValueObject\BottleName;
use App\BottleInventory\Domain\ValueObject\BottleOwnerId;
use App\BottleInventory\Domain\ValueObject\BottlePrice;
use App\BottleInventory\Domain\ValueObject\BottleRate;
use App\BottleInventory\Domain\ValueObject\BottleWineType;
use App\BottleInventory\Domain\ValueObject\BottleYear;
use PHPUnit\Framework\Attributes\DataProvider;
use Shared\ApiTestCase;

final class DeleteBottleProcessorTest extends ApiTestCase
{
    private BottleRepositoryInterface $doctrineBottleRepository;
    private CreateBottleProjection $createBottleProjection;
    private CreateBottleListProjection $createBottleListProjection;

    #[\Override]
    public function setUp(): void
    {
        static::bootKernel();

        $container = static::getContainer();
        $this->doctrineBottleRepository = $container->get(BottleRepositoryInterface::class);
        $this->createBottleProjection = $container->get(CreateBottleProjection::class);
        $this->createBottleListProjection = $container->get(CreateBottleListProjection::class);

        parent::setUp();
    }

    public function testDeleteBottle(): void
    {
        $bottle = Bottle::create(
            BottleId::fromString('9b676c71-3ad3-4c67-a464-aefef9f1940a'),
            BottleName::fromString('Mercurey 1er cru clos l\'évêque'),
            BottleEstateName::fromString('Maison Patriarche'),
            BottleWineType::fromString('red'),
            BottleYear::fromInt(2018),
            BottleGrapeVarieties::fromArray(['Pinot Noir']),
            BottleRate::fromString('-'),
            BottleOwnerId::fromString('hugues.gobet@gmail.com'),
            BottleCountry::fromString('France'),
            BottlePrice::fromFloat(29.90),
        );

        $this->doctrineBottleRepository->add($bottle);

        $projectionBottle = $this->createBottleProjection;
        $projectionBottleList = $this->createBottleListProjection;

        $projectionBottle($bottle::getRecordedEvent()[0]);
        $projectionBottleList($bottle::getRecordedEvent()[0]);

        $bottle::eraseRecordedEvents();

        $this->delete('/api/bottles/9b676c71-3ad3-4c67-a464-aefef9f1940a');

        $this->assertResponseStatusCodeSame(204);
    }

    #[DataProvider('provideInvalidData')]
    public function testDeleteBottleWithInvalidData(
        string $id,
        int $statusCode,
    ): void {
        $this->delete(
            sprintf(
                '/api/bottles/%s',
                $id,
            ),
        );
        $this->assertResponseStatusCodeSame($statusCode);
    }

    public static function provideInvalidData(): \Generator
    {
        yield 'Not found bottle' => [
            'id' => '430e1ce0-f5a6-4503-bb44-3b3bcc6a9e1c',
            'statusCode' => 404,
        ];

        yield 'BottleInventory not owned by user which try to remove it' => [
            'id' => '97102d4c-da46-4105-8c34-53f5a2e1e9fa',
            'statusCode' => 403,
        ];
    }
}
