<?php

declare(strict_types=1);

namespace AdapterTest\DrivingTest\Tasting\Infrastructure\Symfony\Messenger;

use App\Tasting\Application\Service\NotificationInterface;
use App\Tasting\Domain\Entity\Tasting;
use App\Tasting\Domain\Repository\InvitationRepositoryInterface;
use App\Tasting\Domain\Service\InviteParticipant;
use App\Tasting\Domain\ValueObject\BottleName;
use App\Tasting\Domain\ValueObject\TastingId;
use App\Tasting\Domain\ValueObject\TastingOwnerId;
use App\Tasting\Infrastructure\Doctrine\Entity\Tasting as TastingDoctrine;
use App\Tasting\Infrastructure\Doctrine\Repository\TastingDoctrineRepository;
use App\Tasting\Infrastructure\Symfony\Messenger\Message\InvitationCreatedMessage;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;
use Zenstruck\Messenger\Test\InteractsWithMessenger;

final class SendInvitationMessageHandlerTest extends KernelTestCase
{
    use InteractsWithMessenger;

    private InvitationRepositoryInterface $doctrineInvitationRepository;
    private TastingDoctrineRepository $doctrineTastingRepository;
    private EntityManagerInterface $entityManager;
    private NotificationInterface $notificationService;
    private InviteParticipant $inviteParticipant;

    #[\Override]
    protected function setUp(): void
    {
        self::bootKernel();
        $container = self::getContainer();

        $this->doctrineInvitationRepository = $container->get(InvitationRepositoryInterface::class);
        $this->doctrineTastingRepository = $container->get(TastingDoctrineRepository::class);
        $this->entityManager = $container->get(EntityManagerInterface::class);
        $this->notificationService = $container->get(NotificationInterface::class);
        $this->inviteParticipant = $container->get(InviteParticipant::class);
    }

    public function testSendInvitation(): void
    {
        $owner = 'hugues.gobet@gmail.com';

        $participant = 'root@gmail.com';

        $tasting = Tasting::create(
            TastingId::fromString('c7a497ed-d885-4401-930c-768dc1a85159'),
            BottleName::fromString('Sassicaia 2012'),
            TastingOwnerId::fromString($owner),
        );

        $tasting::eraseRecordedEvents();

        $this->doctrineTastingRepository->add($tasting);

        $this->assertCount(0, $tasting->invitations()->values());

        $this->inviteParticipant->inviteParticipants(
            $tasting,
            [
                $participant,
            ],
        );

        $tasting::eraseRecordedEvents();

        $this->doctrineTastingRepository->update($tasting);

        $this->bus('event.bus')->dispatch(new InvitationCreatedMessage(
            'c7a497ed-d885-4401-930c-768dc1a85159',
            $tasting->invitations()->values()[0]->id()->value(),
        ));

        $this->transport('tasting')->queue()->assertContains(InvitationCreatedMessage::class, 1);
        $this->transport('tasting')->process(1);
        $this->transport('tasting')->queue()->assertContains(InvitationCreatedMessage::class, 0);

        $this->assertEmailCount(1);
        $email = $this->getMailerMessage();
        $this->assertEmailHtmlBodyContains($email, 'Invitation à déguster une bouteille de vin');

        $notifications = $this->notificationService::getSent();
        $this->assertCount(1, $notifications);
        $this->assertEquals('Invitation à déguster une bouteille de vin', $notifications[0]->title());
        $this->assertEquals('Pedro vous invite à déguster une bouteille de vin Sassicaia 2012', $notifications[0]->body());

        $tasting = $this->doctrineTastingRepository->ofId(TastingId::fromString('c7a497ed-d885-4401-930c-768dc1a85159'));
        $this->assertNotNull($tasting->invitations()->values()[0]);

        $tasting = $this->entityManager->getRepository(TastingDoctrine::class)->find('c7a497ed-d885-4401-930c-768dc1a85159');
        $this->entityManager->remove($tasting);
        $this->entityManager->flush();
    }
}
