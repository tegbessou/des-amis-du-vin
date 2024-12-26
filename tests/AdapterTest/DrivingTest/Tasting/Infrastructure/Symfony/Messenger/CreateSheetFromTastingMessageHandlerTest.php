<?php

declare(strict_types=1);

namespace AdapterTest\DrivingTest\Tasting\Infrastructure\Symfony\Messenger;

use App\Tasting\Domain\Entity\Tasting;
use App\Tasting\Domain\ValueObject\Bottle;
use App\Tasting\Domain\ValueObject\SheetParticipant;
use App\Tasting\Domain\ValueObject\SheetTastingId;
use App\Tasting\Domain\ValueObject\TastingId;
use App\Tasting\Domain\ValueObject\TastingOwnerId;
use App\Tasting\Infrastructure\Doctrine\Repository\SheetDoctrineRepository;
use App\Tasting\Infrastructure\Doctrine\Repository\TastingDoctrineRepository;
use App\Tasting\Infrastructure\Symfony\Messenger\Message\CreateSheetWhenTastingIsCreatedMessage;
use Shared\RefreshDatabase;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;
use Zenstruck\Messenger\Test\InteractsWithMessenger;

final class CreateSheetFromTastingMessageHandlerTest extends KernelTestCase
{
    use InteractsWithMessenger;
    use RefreshDatabase;

    private SheetDoctrineRepository $doctrineSheetRepository;
    private TastingDoctrineRepository $doctrineTastingRepository;

    #[\Override]
    protected function setUp(): void
    {
        self::bootKernel();
        $container = self::getContainer();

        $this->doctrineSheetRepository = $container->get(SheetDoctrineRepository::class);
        $this->doctrineTastingRepository = $container->get(TastingDoctrineRepository::class);
    }

    public function testCreateSheet(): void
    {
        $owner = 'hugues.gobet@gmail.com';

        $participant = 'root@gmail.com';

        $tasting = Tasting::create(
            TastingId::fromString('c7a497ed-d885-4401-930c-768dc1a85159'),
            Bottle::create(
                'Sassicaia 2012',
                'red',
            ),
            TastingOwnerId::fromString($owner),
        );

        $tasting::eraseRecordedEvents();

        $this->doctrineTastingRepository->add($tasting);

        $this->bus('event.bus')->dispatch(new CreateSheetWhenTastingIsCreatedMessage(
            'c7a497ed-d885-4401-930c-768dc1a85159',
            'root@gmail.com',
        ));

        $this->transport('tasting')->queue()->assertContains(CreateSheetWhenTastingIsCreatedMessage::class, 1);
        $this->transport('tasting')->process(1);
        $this->transport('tasting')->queue()->assertContains(CreateSheetWhenTastingIsCreatedMessage::class, 0);

        $this->assertCount(1, $this->doctrineSheetRepository->withTastingAndParticipant(
            SheetTastingId::fromString($tasting->id()->value()),
            SheetParticipant::fromString($participant),
        ));
    }
}