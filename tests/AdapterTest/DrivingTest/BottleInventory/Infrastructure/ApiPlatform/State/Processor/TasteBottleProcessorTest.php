<?php

declare(strict_types=1);

namespace AdapterTest\DrivingTest\BottleInventory\Infrastructure\ApiPlatform\State\Processor;

use App\BottleInventory\Domain\Repository\BottleRepositoryInterface;
use App\BottleInventory\Domain\ValueObject\BottleId;
use App\BottleInventory\Infrastructure\Symfony\Messenger\Message\BottleTastedMessage;
use PHPUnit\Framework\Attributes\DataProvider;
use Shared\ApiTestCase;
use Shared\RefreshDatabase;
use Zenstruck\Messenger\Test\InteractsWithMessenger;

final class TasteBottleProcessorTest extends ApiTestCase
{
    use InteractsWithMessenger;
    use RefreshDatabase;

    private BottleRepositoryInterface $doctrineBottleRepository;

    #[\Override]
    public function setUp(): void
    {
        static::bootKernel();

        $container = static::getContainer();
        $this->doctrineBottleRepository = $container->get(BottleRepositoryInterface::class);

        parent::setUp();
    }

    public function testTasteBottle(): void
    {
        $this->transport('bottle_inventory_to_tasting')->queue()->assertEmpty();

        $this->post('/api/bottles/7bd55df3-e53c-410b-83a4-8e5ed9bcd50d/taste');

        $bottle = $this->doctrineBottleRepository->ofId(
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d')
        );

        $this->assertResponseStatusCodeSame(204);
        $this->assertNotNull($bottle->tastedAt());

        $this->transport('bottle_inventory_to_tasting')->queue()->assertContains(BottleTastedMessage::class, 1);
    }

    #[DataProvider('provideInvalidData')]
    public function testTasteBottleWithInvalidData(
        string $id,
        int $statusCode,
    ): void {
        $this->post(
            sprintf(
                '/api/bottles/%s/taste',
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

        yield 'BottleInventory not owned by user which try to taste it' => [
            'id' => '97102d4c-da46-4105-8c34-53f5a2e1e9fa',
            'statusCode' => 403,
        ];
    }
}
