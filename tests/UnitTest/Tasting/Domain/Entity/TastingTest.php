<?php

declare(strict_types=1);

namespace App\Tests\UnitTest\Tasting\Domain\Entity;

use App\Tasting\Domain\Entity\Participant;
use App\Tasting\Domain\Entity\Tasting;
use App\Tasting\Domain\Event\TastingCreatedEvent;
use App\Tasting\Domain\Event\TastingParticipantsInvitedEvent;
use App\Tasting\Domain\ValueObject\BottleId;
use App\Tasting\Domain\ValueObject\ParticipantEmail;
use App\Tasting\Domain\ValueObject\ParticipantFullName;
use App\Tasting\Domain\ValueObject\ParticipantId;
use App\Tasting\Domain\ValueObject\TastingId;
use App\Tasting\Domain\ValueObject\TastingParticipants;
use PHPUnit\Framework\TestCase;

final class TastingTest extends TestCase
{
    public function testCreate(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $this->assertInstanceOf(Tasting::class, $tasting);
        $this->assertEquals(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            $tasting->id(),
        );
        $this->assertEquals(
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            $tasting->bottleId(),
        );
        $this->assertEquals(
            TastingParticipants::fromArray([
                '9964e539-05ff-4611-b39c-ffd6d108b8b7',
            ]),
            $tasting->participants(),
        );
    }

    public function testCreateFailedBadIdLength(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        Tasting::create(
            TastingId::fromString('af785dbb-4ac1-4786-a5aa-1fed08f6ec26-1fed08f6ec26'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );
    }

    public function testCreateFailedBadId(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        Tasting::create(
            TastingId::fromString('12'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );
    }

    public function testCreateFailedBadBottleIdLength(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('af785dbb-4ac1-4786-a5aa-1fed08f6ec26-1fed08f6ec26'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );
    }

    public function testCreateFailedBadBottleId(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('12'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );
    }

    public function testInviteParticipants(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $tasting->inviteParticipants(
            [
                Participant::create(
                    ParticipantId::fromString('c9350812-3f30-4fa4-8580-295ca65a4451'),
                    ParticipantEmail::fromString('root@gmail.com'),
                    ParticipantFullName::fromString('Root'),
                ),
            ]
        );

        $this->assertEquals(
            TastingParticipants::fromArray([
                '9964e539-05ff-4611-b39c-ffd6d108b8b7',
                'c9350812-3f30-4fa4-8580-295ca65a4451',
            ]),
            $tasting->participants(),
        );
    }

    public function testInviteParticipantsThatAlreadyExist(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $tasting->inviteParticipants(
            [
                Participant::create(
                    ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                    ParticipantEmail::fromString('root@gmail.com'),
                    ParticipantFullName::fromString('Root'),
                ),
            ]
        );

        $this->assertEquals(
            TastingParticipants::fromArray([
                '9964e539-05ff-4611-b39c-ffd6d108b8b7',
            ]),
            $tasting->participants(),
        );
    }

    public function testInviteMultipleParticipants(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $tasting->inviteParticipants([
            Participant::create(
                ParticipantId::fromString('c9350812-3f30-4fa4-8580-295ca65a4451'),
                ParticipantEmail::fromString('root@gmail.com'),
                ParticipantFullName::fromString('Root'),
            ),
            Participant::create(
                ParticipantId::fromString('51c7a8b2-5cd9-478e-8176-f2318725b14a'),
                ParticipantEmail::fromString('not.existing@gmail.com'),
                ParticipantFullName::fromString('Not Existing'),
            ),
        ]);

        $this->assertEquals(
            TastingParticipants::fromArray([
                '9964e539-05ff-4611-b39c-ffd6d108b8b7',
                'c9350812-3f30-4fa4-8580-295ca65a4451',
                '51c7a8b2-5cd9-478e-8176-f2318725b14a',
            ]),
            $tasting->participants(),
        );
    }

    public function testInviteParticipantsBadParticipantsIdLength(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $this->expectException(\InvalidArgumentException::class);

        $tasting->inviteParticipants(['af785dbb-4ac1-4786-a5aa-1fed08f6ec26-1fed08f6ec26']);
    }

    public function testInviteParticipantsBadParticipantsId(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $this->expectException(\InvalidArgumentException::class);

        $tasting->inviteParticipants(['12']);
    }

    public function testCreateSuccessEventDispatch(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $this->assertInstanceOf(TastingCreatedEvent::class, $tasting::getRecordedEvent()[0]);
        $tasting::eraseRecordedEvents();
    }

    public function testCreateFailedNoEventDispatch(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        $tasting = Tasting::create(
            TastingId::fromString('af785dbb-4ac1-4786-a5aa-1fed08f6ec26-1fed08f6ec26'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $this->assertEmpty($tasting::getRecordedEvent()[0]);
    }

    public function testInviteParticipantsSuccessEventDispatch(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $tasting::eraseRecordedEvents();

        $tasting->inviteParticipants([
            Participant::create(
                ParticipantId::fromString('c9350812-3f30-4fa4-8580-295ca65a4451'),
                ParticipantEmail::fromString('root@gmail.com'),
                ParticipantFullName::fromString('Root'),
            ),
        ]);

        $this->assertInstanceOf(TastingParticipantsInvitedEvent::class, $tasting::getRecordedEvent()[0]);
        $tasting::eraseRecordedEvents();
    }

    public function testParticipantsInvitedFailedNoEventDispatch(): void
    {
        $tasting = Tasting::create(
            TastingId::fromString('ee4fd98c-4427-42c1-bb70-08f6d92377c9'),
            BottleId::fromString('7bd55df3-e53c-410b-83a4-8e5ed9bcd50d'),
            Participant::create(
                ParticipantId::fromString('9964e539-05ff-4611-b39c-ffd6d108b8b7'),
                ParticipantEmail::fromString('hugues.gobet@gmail.com'),
                ParticipantFullName::fromString('Hugues Gobet'),
            ),
        );

        $tasting::eraseRecordedEvents();

        $this->expectException(\InvalidArgumentException::class);

        $tasting->inviteParticipants(['af785dbb-4ac1-4786-a5aa-1fed08f6ec26-1fed08f6ec26']);

        $this->assertEmpty($tasting::getRecordedEvent()[0]);
    }
}
