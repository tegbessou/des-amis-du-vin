<?php

declare(strict_types=1);

namespace App\Tests\AdapterTest\DrivingTest\Bottle\Infrastructure\ApiPlatform\State\Processor;

use App\Bottle\Domain\Entity\Bottle;
use App\Tests\Shared\ApiTestCase;
use Doctrine\ORM\EntityManagerInterface;

final class CreateBottleProcessorTest extends ApiTestCase
{
    private EntityManagerInterface $entityManager;

    #[\Override]
    public function setUp(): void
    {
        static::bootKernel();

        $container = static::getContainer();
        $this->entityManager = $container->get(EntityManagerInterface::class);

        parent::setUp();
    }

    public function testCreateBottle(): void
    {
        $this->post('/api/bottles', [
            'name' => 'Pavillon Rouge du Château Margaux',
            'estateName' => 'Château Margaux',
            'year' => 1995,
            'grapeVarieties' => ['Cabernet Sauvignon', 'Merlot', 'Cabernet Franc', 'Petit Verdot'],
            'wineType' => 'red',
            'rate' => 'xs',
            'ownerId' => 'ee036f3b-d488-43be-b10c-fdbdcb0a6c0b',
            'country' => 'France',
        ]);

        $this->assertResponseStatusCodeSame(204);

        $bottle = $this->entityManager->getRepository(Bottle::class)->findOneBy([
            'name.value' => 'Pavillon Rouge du Château Margaux',
        ]);
        $this->entityManager->remove($bottle);
        $this->entityManager->flush();
    }

    /**
     * @dataProvider provideInvalidData
     */
    public function testCreateBottleWithInvalidData(
        array $payload,
        int $statusCode,
        array $violations,
    ): void {
        $this->post('/api/bottles', $payload);
        $this->assertResponseStatusCodeSame($statusCode);

        if ($statusCode === 422) {
            $this->assertJsonContains([
                '@type' => 'ConstraintViolationList',
                'hydra:title' => 'An error occurred',
                'violations' => $violations,
            ]);
        }
    }

    public static function provideInvalidData(): \Generator
    {
        yield 'No data passed' => [
            'payload' => [],
            'statusCode' => 422,
            'violations' => [
                [
                    'propertyPath' => 'name',
                    'message' => 'This value should not be blank.',
                    'code' => 'c1051bb4-d103-4f74-8988-acbcafc7fdc3',
                ],
                [
                    'propertyPath' => 'estateName',
                    'message' => 'This value should not be blank.',
                    'code' => 'c1051bb4-d103-4f74-8988-acbcafc7fdc3',
                ],
                [
                    'propertyPath' => 'wineType',
                    'message' => 'This value should not be blank.',
                    'code' => 'c1051bb4-d103-4f74-8988-acbcafc7fdc3',
                ],
                [
                    'propertyPath' => 'year',
                    'message' => 'This value should not be blank.',
                    'code' => 'c1051bb4-d103-4f74-8988-acbcafc7fdc3',
                ],
                [
                    'propertyPath' => 'grapeVarieties',
                    'message' => 'This value should not be blank.',
                    'code' => 'c1051bb4-d103-4f74-8988-acbcafc7fdc3',
                ],
                [
                    'propertyPath' => 'rate',
                    'message' => 'This value should not be blank.',
                    'code' => 'c1051bb4-d103-4f74-8988-acbcafc7fdc3',
                ],
                [
                    'propertyPath' => 'ownerId',
                    'message' => 'This value should not be blank.',
                    'code' => 'c1051bb4-d103-4f74-8988-acbcafc7fdc3',
                ],
            ],
        ];

        yield 'Bad wine type value' => [
            'payload' => [
                'name' => 'Pavillon Rouge du Château Margaux',
                'estateName' => 'Château Margaux',
                'year' => 1995,
                'grapeVarieties' => ['Cabernet Sauvignon', 'Merlot', 'Cabernet Franc', 'Petit Verdot'],
                'wineType' => 'yellow',
                'rate' => 'xs',
                'ownerId' => 'ee036f3b-d488-43be-b10c-fdbdcb0a6c0b',
                'country' => 'France',
            ],
            'statusCode' => 400,
            'violations' => [],
        ];

        yield 'Bad rate value' => [
            'payload' => [
                'name' => 'Pavillon Rouge du Château Margaux',
                'estateName' => 'Château Margaux',
                'year' => 1995,
                'grapeVarieties' => ['Cabernet Sauvignon', 'Merlot', 'Cabernet Franc', 'Petit Verdot'],
                'wineType' => 'red',
                'rate' => 'top',
                'ownerId' => 'ee036f3b-d488-43be-b10c-fdbdcb0a6c0b',
                'country' => 'France',
            ],
            'statusCode' => 400,
            'violations' => [],
        ];

        yield 'Owner doesn\'t exists' => [
            'payload' => [
                'name' => 'Pavillon Rouge du Château Margaux',
                'estateName' => 'Château Margaux',
                'year' => 1995,
                'grapeVarieties' => ['Cabernet Sauvignon', 'Merlot', 'Cabernet Franc', 'Petit Verdot'],
                'wineType' => 'red',
                'rate' => 'xs',
                'ownerId' => 'd46b4522-b265-4e35-8f33-c95db871b7b8',
                'country' => 'France',
            ],
            'statusCode' => 422,
            'violations' => [
                [
                    'propertyPath' => 'ownerId',
                    'message' => "Owner with id d46b4522-b265-4e35-8f33-c95db871b7b8 doesn't exist.",
                ],
            ],
        ];

        yield 'One grape varieties doesn\'t exist' => [
            'payload' => [
                'name' => 'Pavillon Rouge du Château Margaux',
                'estateName' => 'Château Margaux',
                'year' => 1995,
                'grapeVarieties' => ['Riesling', 'Merlot', 'Cabernet Franc', 'Petit Verdot'],
                'wineType' => 'red',
                'rate' => 'xs',
                'ownerId' => 'ee036f3b-d488-43be-b10c-fdbdcb0a6c0b',
                'country' => 'France',
            ],
            'statusCode' => 422,
            'violations' => [
                [
                    'propertyPath' => 'grapeVarieties',
                    'message' => "Grape variety with name Riesling doesn't exist.",
                ],
            ],
        ];

        yield 'Many grape varieties doesn\'t exist' => [
            'payload' => [
                'name' => 'Pavillon Rouge du Château Margaux',
                'estateName' => 'Château Margaux',
                'year' => 1995,
                'grapeVarieties' => ['Riesling', 'Négrette', 'Cabernet Franc', 'Petit Verdot'],
                'wineType' => 'red',
                'rate' => 'xs',
                'ownerId' => 'ee036f3b-d488-43be-b10c-fdbdcb0a6c0b',
                'country' => 'France',
            ],
            'statusCode' => 422,
            'violations' => [
                [
                    'propertyPath' => 'grapeVarieties',
                    'message' => "Grape varieties with name Riesling, Négrette don't exist.",
                ],
            ],
        ];

        yield 'Country doesn\'t exist' => [
            'payload' => [
                'name' => 'Pavillon Rouge du Château Margaux',
                'estateName' => 'Château Margaux',
                'year' => 1995,
                'grapeVarieties' => ['Cabernet Sauvignon', 'Merlot', 'Cabernet Franc', 'Petit Verdot'],
                'wineType' => 'red',
                'rate' => 'xs',
                'ownerId' => 'ee036f3b-d488-43be-b10c-fdbdcb0a6c0b',
                'country' => 'Italy',
            ],
            'statusCode' => 422,
            'violations' => [
                [
                    'propertyPath' => 'country',
                    'message' => "Country with name Italy doesn't exist.",
                ],
            ],
        ];
    }
}
