<?php

declare(strict_types=1);

namespace AdapterTest\ContractTest\Tasting\Infrastructure\Doctrine\Mapper;

use App\Tasting\Domain\Entity\Invitation;
use App\Tasting\Domain\Entity\Tasting;
use App\Tasting\Domain\Enum\TastingInvitationStatus;
use App\Tasting\Domain\Repository\TastingRepositoryInterface;
use App\Tasting\Domain\Service\GetInvitationLink;
use App\Tasting\Domain\ValueObject\BottleName;
use App\Tasting\Domain\ValueObject\InvitationId;
use App\Tasting\Domain\ValueObject\InvitationTarget;
use App\Tasting\Domain\ValueObject\TastingId;
use App\Tasting\Domain\ValueObject\TastingOwnerId;
use App\Tasting\Infrastructure\Doctrine\Entity\Invitation as InvitationDoctrine;
use App\Tasting\Infrastructure\Doctrine\Entity\Tasting as TastingDoctrine;
use App\Tasting\Infrastructure\Doctrine\Mapper\TastingMapper;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;

// a reflechir ou on place ces tests => dans le repository ou ici
final class TastingMapperTest extends KernelTestCase
{
    private TastingRepositoryInterface $tastingRepository;
    private EntityManagerInterface $entityManager;

    #[\Override]
    protected function setUp(): void
    {
        self::bootKernel();

        $container = self::getContainer();
        $this->tastingRepository = $container->get(TastingRepositoryInterface::class);
        $this->entityManager = $container->get(EntityManagerInterface::class);
    }

    public function testToDomain(): void
    {
        $tastingDoctrine = new TastingDoctrine(
            'b9857453-1891-4fe8-80a9-1b873f15f0ec',
            'Chateaux Margaux 2015',
            [
                'hugues.gobet@gmail.com',
            ],
            'hugues.gobet@gmail.com',
            new ArrayCollection(),
        );

        $invitationDoctrine = new InvitationDoctrine(
            'ea1341e5-f13b-4ee6-9597-383327c0fc57',
            $tastingDoctrine,
            'root@gmail.com',
            GetInvitationLink::getLink()->value(),
            TastingInvitationStatus::PENDING,
            new \DateTimeImmutable(),
        );

        $tastingDoctrine->addInvitation($invitationDoctrine);

        $tasting = TastingMapper::toDomain($tastingDoctrine);

        $expected = Tasting::create(
            TastingId::fromString('b9857453-1891-4fe8-80a9-1b873f15f0ec'),
            BottleName::fromString('Chateaux Margaux 2015'),
            TastingOwnerId::fromString('hugues.gobet@gmail.com'),
        );

        $expected->invite(
            InvitationId::fromString('ea1341e5-f13b-4ee6-9597-383327c0fc57'),
            InvitationTarget::fromString('root@gmail.com'),
        );

        $this->assertEquals(
            $expected->id(),
            $tasting->id(),
        );
        $this->assertEquals(
            $expected->bottleName(),
            $tasting->bottleName(),
        );
        $this->assertEquals(
            $expected->participants()->values(),
            $tasting->participants()->values(),
        );
        $this->assertEquals(
            $expected->ownerId(),
            $tasting->ownerId(),
        );

        /** @var Invitation $expectedInvitation */
        $expectedInvitation = $expected->invitations()->values()[0];

        /** @var Invitation $invitation */
        $invitation = $tasting->invitations()->values()[0];

        $this->assertEquals(
            $expectedInvitation->id(),
            $invitation->id(),
        );
        $this->assertEquals(
            $expectedInvitation->target(),
            $invitation->target(),
        );
        $this->assertEquals(
            $expectedInvitation->status(),
            $invitation->status(),
        );
    }

    public function testToInfrastructurePersist(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('b9857453-1891-4fe8-80a9-1b873f15f0ec'),
            BottleName::fromString('Chateaux Margaux 2015'),
            TastingOwnerId::fromString('hugues.gobet@gmail.com'),
        );

        $this->tastingRepository->add($tasting);

        $toRemove = $this->entityManager->getRepository(TastingDoctrine::class)->find('b9857453-1891-4fe8-80a9-1b873f15f0ec');
        $this->entityManager->remove($toRemove);
        $this->entityManager->flush();

        $expected = new TastingDoctrine(
            'b9857453-1891-4fe8-80a9-1b873f15f0ec',
            'Chateaux Margaux 2015',
            [
                'hugues.gobet@gmail.com',
            ],
            'hugues.gobet@gmail.com',
            new ArrayCollection(),
        );

        $tasting = TastingMapper::toInfrastructurePersist($tasting);

        $this->assertEquals(
            $expected->id,
            $tasting->id,
        );
        $this->assertEquals(
            $expected->bottleName,
            $tasting->bottleName,
        );
        $this->assertEquals(
            $expected->participants,
            $tasting->participants,
        );
        $this->assertEquals(
            $expected->ownerId,
            $tasting->ownerId,
        );
        $this->assertEquals(
            $expected->invitations,
            $tasting->invitations,
        );
    }

    public function testToInfrastructureUpdateNewInvitation(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('b9857453-1891-4fe8-80a9-1b873f15f0ec'),
            BottleName::fromString('Chateaux Margaux 2015'),
            TastingOwnerId::fromString('hugues.gobet@gmail.com'),
        );

        $this->tastingRepository->add($tasting);

        $tasting->invite(
            InvitationId::fromString('ea1341e5-f13b-4ee6-9597-383327c0fc57'),
            InvitationTarget::fromString('root@gmail.com'),
        );

        $this->tastingRepository->update($tasting);

        $toRemove = $this->entityManager->getRepository(TastingDoctrine::class)->find('b9857453-1891-4fe8-80a9-1b873f15f0ec');
        $this->entityManager->remove($toRemove);
        $this->entityManager->flush();

        $expected = new TastingDoctrine(
            'b9857453-1891-4fe8-80a9-1b873f15f0ec',
            'Chateaux Margaux 2015',
            [
                'hugues.gobet@gmail.com',
            ],
            'hugues.gobet@gmail.com',
            new ArrayCollection(),
        );

        $tastingDoctrine = TastingMapper::toInfrastructureUpdate($tasting, $expected);

        $expectedInvitation = new InvitationDoctrine(
            'ea1341e5-f13b-4ee6-9597-383327c0fc57',
            $expected,
            'root@gmail.com',
            GetInvitationLink::getLink()->value(),
            TastingInvitationStatus::PENDING,
            new \DateTimeImmutable(),
        );

        $expected->addInvitation($expectedInvitation);

        $this->assertEquals(
            $expected->id,
            $tastingDoctrine->id,
        );
        $this->assertEquals(
            $expected->bottleName,
            $tastingDoctrine->bottleName,
        );
        $this->assertEquals(
            $expected->participants,
            $tastingDoctrine->participants,
        );
        $this->assertEquals(
            $expected->ownerId,
            $tastingDoctrine->ownerId,
        );

        /** @var InvitationDoctrine $invitation */
        $invitation = $tastingDoctrine->invitations->first();

        $this->assertEquals(
            $expectedInvitation->id,
            $invitation->id,
        );
        $this->assertEquals(
            $expectedInvitation->target,
            $invitation->target,
        );
        $this->assertNotNull(
            $invitation->subject,
        );
        $this->assertEquals(
            $expectedInvitation->status,
            $invitation->status,
        );
        $this->assertEquals(
            $expectedInvitation->sentAt,
            $invitation->sentAt,
        );
    }

    public function testToInfrastructureUpdateInvitationUpdated(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('b9857453-1891-4fe8-80a9-1b873f15f0ec'),
            BottleName::fromString('Chateaux Margaux 2015'),
            TastingOwnerId::fromString('hugues.gobet@gmail.com'),
        );

        $this->tastingRepository->add($tasting);

        $tasting->invite(
            InvitationId::fromString('ea1341e5-f13b-4ee6-9597-383327c0fc57'),
            InvitationTarget::fromString('root@gmail.com'),
        );

        $this->tastingRepository->update($tasting);

        $tasting->sendInvitation($tasting->invitations()->values()[0]);

        $this->tastingRepository->update($tasting);

        $toRemove = $this->entityManager->getRepository(TastingDoctrine::class)->find('b9857453-1891-4fe8-80a9-1b873f15f0ec');
        $this->entityManager->remove($toRemove);
        $this->entityManager->flush();

        $oldTasting = new TastingDoctrine(
            'b9857453-1891-4fe8-80a9-1b873f15f0ec',
            'Chateaux Margaux 2015',
            [
                'hugues.gobet@gmail.com',
            ],
            'hugues.gobet@gmail.com',
            new ArrayCollection(),
        );

        $expected = new TastingDoctrine(
            'b9857453-1891-4fe8-80a9-1b873f15f0ec',
            'Chateaux Margaux 2015',
            [
                'hugues.gobet@gmail.com',
            ],
            'hugues.gobet@gmail.com',
            new ArrayCollection(),
        );

        $tastingDoctrine = TastingMapper::toInfrastructureUpdate($tasting, $oldTasting);

        $expectedInvitation = new InvitationDoctrine(
            'ea1341e5-f13b-4ee6-9597-383327c0fc57',
            $expected,
            'root@gmail.com',
            GetInvitationLink::getLink()->value(),
            TastingInvitationStatus::PENDING,
            new \DateTimeImmutable(),
            new \DateTimeImmutable(),
        );

        $expected->addInvitation($expectedInvitation);

        $this->assertEquals(
            $expected->id,
            $tastingDoctrine->id,
        );
        $this->assertEquals(
            $expected->bottleName,
            $tastingDoctrine->bottleName,
        );
        $this->assertEquals(
            $expected->participants,
            $tastingDoctrine->participants,
        );
        $this->assertEquals(
            $expected->ownerId,
            $tastingDoctrine->ownerId,
        );

        /** @var InvitationDoctrine $invitation */
        $invitation = $tastingDoctrine->invitations->first();

        $this->assertEquals(
            $expectedInvitation->id,
            $invitation->id,
        );
        $this->assertEquals(
            $expectedInvitation->target,
            $invitation->target,
        );
        $this->assertNotNull(
            $invitation->subject,
        );
        $this->assertEquals(
            $expectedInvitation->status,
            $invitation->status,
        );
        $this->assertNotNull(
            $invitation->sentAt,
        );
    }

    public function testToInfrastructureUpdateInvitationRemoved(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('b9857453-1891-4fe8-80a9-1b873f15f0ec'),
            BottleName::fromString('Chateaux Margaux 2015'),
            TastingOwnerId::fromString('hugues.gobet@gmail.com'),
        );

        $this->tastingRepository->add($tasting);

        $tasting->invite(
            InvitationId::fromString('ea1341e5-f13b-4ee6-9597-383327c0fc57'),
            InvitationTarget::fromString('root@gmail.com'),
        );

        $this->tastingRepository->update($tasting);

        $tasting->sendInvitation($tasting->invitations()->values()[0]);

        $this->tastingRepository->update($tasting);

        $tasting->rejectInvitation($tasting->invitations()->values()[0]);

        $this->tastingRepository->update($tasting);

        $tasting->removeInvitation($tasting->invitations()->values()[0]);

        $this->tastingRepository->update($tasting);

        $toRemove = $this->entityManager->getRepository(TastingDoctrine::class)->find('b9857453-1891-4fe8-80a9-1b873f15f0ec');
        $this->entityManager->remove($toRemove);
        $this->entityManager->flush();

        $oldTasting = new TastingDoctrine(
            'b9857453-1891-4fe8-80a9-1b873f15f0ec',
            'Chateaux Margaux 2015',
            [
                'hugues.gobet@gmail.com',
            ],
            'hugues.gobet@gmail.com',
            new ArrayCollection(),
        );

        $expected = new TastingDoctrine(
            'b9857453-1891-4fe8-80a9-1b873f15f0ec',
            'Chateaux Margaux 2015',
            [
                'hugues.gobet@gmail.com',
            ],
            'hugues.gobet@gmail.com',
            new ArrayCollection(),
        );

        $tastingDoctrine = TastingMapper::toInfrastructureUpdate($tasting, $oldTasting);

        $this->assertEquals(
            $expected->id,
            $tastingDoctrine->id,
        );
        $this->assertEquals(
            $expected->bottleName,
            $tastingDoctrine->bottleName,
        );
        $this->assertEquals(
            $expected->participants,
            $tastingDoctrine->participants,
        );
        $this->assertEquals(
            $expected->ownerId,
            $tastingDoctrine->ownerId,
        );
        $this->assertCount(0, $tastingDoctrine->invitations);
    }
}