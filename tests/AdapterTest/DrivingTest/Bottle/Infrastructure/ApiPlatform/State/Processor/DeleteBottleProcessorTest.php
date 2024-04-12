<?php

declare(strict_types=1);

namespace App\Tests\AdapterTest\DrivingTest\Bottle\Infrastructure\ApiPlatform\State\Processor;

use App\Bottle\Domain\Entity\Bottle;
use App\Bottle\Domain\ValueObject\BottleCountry;
use App\Bottle\Domain\ValueObject\BottleEstateName;
use App\Bottle\Domain\ValueObject\BottleGrapeVarieties;
use App\Bottle\Domain\ValueObject\BottleId;
use App\Bottle\Domain\ValueObject\BottleName;
use App\Bottle\Domain\ValueObject\BottleOwnerId;
use App\Bottle\Domain\ValueObject\BottlePrice;
use App\Bottle\Domain\ValueObject\BottleRate;
use App\Bottle\Domain\ValueObject\BottleWineType;
use App\Bottle\Domain\ValueObject\BottleYear;
use App\Bottle\Infrastructure\Doctrine\Repository\BottleWriteDoctrineRepository;
use App\Tests\Shared\ApiTestCase;

final class DeleteBottleProcessorTest extends ApiTestCase
{
    private BottleWriteDoctrineRepository $doctrineBottleWriteRepository;

    #[\Override]
    public function setUp(): void
    {
        static::bootKernel();

        $container = static::getContainer();
        $this->doctrineBottleWriteRepository = $container->get(BottleWriteDoctrineRepository::class);

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
            BottleOwnerId::fromString('ee036f3b-d488-43be-b10c-fdbdcb0a6c0b'),
            BottleCountry::fromString('France'),
            BottlePrice::fromFloat(29.90),
        );

        $this->doctrineBottleWriteRepository->add($bottle);

        $this->delete('/api/bottles/9b676c71-3ad3-4c67-a464-aefef9f1940a');

        $this->assertResponseStatusCodeSame(204);
    }

    /**
     * @dataProvider provideInvalidData
     */
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

        yield 'Bottle not owned by user which try to remove it' => [
            'id' => '97102d4c-da46-4105-8c34-53f5a2e1e9fa',
            'statusCode' => 403,
        ];
    }
}
