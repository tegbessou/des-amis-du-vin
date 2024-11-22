<?php

declare(strict_types=1);

namespace AdapterTest\ContractTest\Tasting\Infrastructure\Doctrine\Adapter;

use App\Tasting\Application\Adapter\TastingAdapterInterface;
use App\Tasting\Application\ReadModel\Tasting;
use Doctrine\ODM\MongoDB\DocumentManager;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;

final class TastingDoctrineAdapterTest extends KernelTestCase
{
    private readonly TastingAdapterInterface $tastingAdapter;

    private readonly DocumentManager $documentManager;

    #[\Override]
    protected function setUp(): void
    {
        self::bootKernel();

        $container = self::getContainer();
        $this->tastingAdapter = $container->get(TastingAdapterInterface::class);
        $this->documentManager = $container->get(DocumentManager::class);
    }

    public function testAdd(): void
    {
        $tasting = new Tasting(
            'b5880b05-073b-4224-95ed-21af2cf4e737',
            [
                'hugues.gobet@gmail.com',
            ],
            'Château Margaux',
            'hugues.gobet@gmail.com',
            'Pedro',
        );

        $this->tastingAdapter->add($tasting);

        $tasting = $this->tastingAdapter->ofId('b5880b05-073b-4224-95ed-21af2cf4e737');
        $this->assertNotNull($tasting);

        $this->documentManager->remove($tasting);
        $this->documentManager->flush();
    }

    public function testOfId(): void
    {
        $this->assertNotNull(
            $this->tastingAdapter->ofId('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
        );
    }

    public function testOfIdNull(): void
    {
        $this->assertNull(
            $this->tastingAdapter->ofId('324ad167-1805-4a61-b2d3-3832e7a4e286'),
        );
    }
}