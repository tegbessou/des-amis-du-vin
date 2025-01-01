<?php

declare(strict_types=1);

namespace UnitTest\Tasting\Domain\Entity;

use App\Tasting\Domain\Entity\Sheet;
use App\Tasting\Domain\Enum\Arome;
use App\Tasting\Domain\Enum\Brillance;
use App\Tasting\Domain\Enum\Impression;
use App\Tasting\Domain\Enum\Intensite;
use App\Tasting\Domain\Enum\IntensiteCouleur;
use App\Tasting\Domain\Enum\Larme;
use App\Tasting\Domain\Enum\Limpidite;
use App\Tasting\Domain\Enum\RedTeinte;
use App\Tasting\Domain\Enum\WhiteTeinte;
use App\Tasting\Domain\Enum\WineType;
use App\Tasting\Domain\Event\EyeAdded;
use App\Tasting\Domain\Event\EyeUpdated;
use App\Tasting\Domain\Event\NoseAdded;
use App\Tasting\Domain\Event\NoseUpdated;
use App\Tasting\Domain\Event\SheetCreated;
use App\Tasting\Domain\Exception\EyeTeinteIsNotForThisWineTypeException;
use App\Tasting\Domain\ValueObject\EyeBrillance;
use App\Tasting\Domain\ValueObject\EyeId;
use App\Tasting\Domain\ValueObject\EyeIntensiteCouleur;
use App\Tasting\Domain\ValueObject\EyeLarme;
use App\Tasting\Domain\ValueObject\EyeLimpidite;
use App\Tasting\Domain\ValueObject\EyeObservation;
use App\Tasting\Domain\ValueObject\EyeTeinte;
use App\Tasting\Domain\ValueObject\NoseArome;
use App\Tasting\Domain\ValueObject\NoseId;
use App\Tasting\Domain\ValueObject\NoseImpression;
use App\Tasting\Domain\ValueObject\NoseIntensite;
use App\Tasting\Domain\ValueObject\NoseObservation;
use App\Tasting\Domain\ValueObject\SheetId;
use App\Tasting\Domain\ValueObject\SheetParticipant;
use App\Tasting\Domain\ValueObject\SheetTastingId;
use PHPUnit\Framework\TestCase;

final class SheetTest extends TestCase
{
    public function testCreate(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $this->assertInstanceOf(Sheet::class, $sheet);
    }

    public function testCreateSuccessEventDispatch(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $this->assertInstanceOf(SheetCreated::class, $sheet::getRecordedEvent()[0]);
        $this->assertEquals('c3827445-9578-43ef-b437-234feba48ec8', $sheet::getRecordedEvent()[0]->sheetId);
        $this->assertEquals('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537', $sheet::getRecordedEvent()[0]->tastingId);
        $this->assertEquals('hugues.gobet@gmail.com', $sheet::getRecordedEvent()[0]->participant);
        $sheet::eraseRecordedEvents();
    }

    public function testCreateFailedBadIdLength(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        Sheet::create(
            SheetId::fromString('af785dbb-4ac1-4786-a5aa-1fed08f6ec26-1fed08f6ec26'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );
    }

    public function testCreateFailedBadId(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        Sheet::create(
            SheetId::fromString('12'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );
    }

    public function testCreateFailedBadTastingIdLength(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('af785dbb-4ac1-4786-a5aa-1fed08f6ec26-1fed08f6ec26'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );
    }

    public function testCreateFailedBadTastingId(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('12'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );
    }

    public function testCreateFailedBadParticipantShouldBeEmail(): void
    {
        $this->expectException(\InvalidArgumentException::class);

        Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet'),
        );
    }

    public function testAddEye(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet::eraseRecordedEvents();

        $sheet->addEye(
            EyeId::fromString('aaa29ab4-e46f-4243-8b7c-20988f2fa25b'),
            EyeLimpidite::fromString(Limpidite::FLOUE->value),
            EyeBrillance::fromString(Brillance::BRILLANTE->value),
            EyeIntensiteCouleur::fromString(IntensiteCouleur::CLAIRE->value),
            EyeTeinte::fromString(RedTeinte::AMBRE->value),
            EyeLarme::fromString(Larme::EPAISSE->value),
            EyeObservation::fromString('Observation'),
            WineType::RedWine,
        );

        $this->assertEquals('aaa29ab4-e46f-4243-8b7c-20988f2fa25b', $sheet->eye()->id()->value());
        $this->assertEquals(Limpidite::FLOUE->value, $sheet->eye()->limpidite()->value());
        $this->assertEquals(Brillance::BRILLANTE->value, $sheet->eye()->brillance()->value());
        $this->assertEquals(IntensiteCouleur::CLAIRE->value, $sheet->eye()->intensiteCouleur()->value());
        $this->assertEquals(RedTeinte::AMBRE->value, $sheet->eye()->teinte()->value());
        $this->assertEquals(Larme::EPAISSE->value, $sheet->eye()->larme()->value());
        $this->assertEquals('Observation', $sheet->eye()->observation()->value());
    }

    public function testAddEyeSuccessEventDispatch(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet::eraseRecordedEvents();

        $sheet->addEye(
            EyeId::fromString('aaa29ab4-e46f-4243-8b7c-20988f2fa25b'),
            EyeLimpidite::fromString(Limpidite::FLOUE->value),
            EyeBrillance::fromString(Brillance::BRILLANTE->value),
            EyeIntensiteCouleur::fromString(IntensiteCouleur::CLAIRE->value),
            EyeTeinte::fromString(RedTeinte::AMBRE->value),
            EyeLarme::fromString(Larme::EPAISSE->value),
            EyeObservation::fromString('Observation'),
            WineType::RedWine,
        );

        $this->assertInstanceOf(EyeAdded::class, $sheet::getRecordedEvent()[0]);
        $this->assertEquals('c3827445-9578-43ef-b437-234feba48ec8', $sheet::getRecordedEvent()[0]->sheetId);
        $this->assertEquals('floue', $sheet::getRecordedEvent()[0]->limpidite);
        $this->assertEquals('brillante', $sheet::getRecordedEvent()[0]->brillance);
        $this->assertEquals('claire', $sheet::getRecordedEvent()[0]->intensiteCouleur);
        $this->assertEquals('ambre', $sheet::getRecordedEvent()[0]->teinte);
        $this->assertEquals('épaisse', $sheet::getRecordedEvent()[0]->larme);
        $this->assertEquals('Observation', $sheet::getRecordedEvent()[0]->observation);
        $sheet::eraseRecordedEvents();
    }

    public function testAddEyeTeinteIsIncompatibleWithWineType(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet::eraseRecordedEvents();

        $this->expectException(EyeTeinteIsNotForThisWineTypeException::class);

        $sheet->addEye(
            EyeId::fromString('aaa29ab4-e46f-4243-8b7c-20988f2fa25b'),
            EyeLimpidite::fromString(Limpidite::FLOUE->value),
            EyeBrillance::fromString(Brillance::BRILLANTE->value),
            EyeIntensiteCouleur::fromString(IntensiteCouleur::CLAIRE->value),
            EyeTeinte::fromString('moche'),
            EyeLarme::fromString(Larme::EPAISSE->value),
            EyeObservation::fromString('Observation'),
            WineType::RedWine,
        );
    }

    public function testUpdateEye(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet::eraseRecordedEvents();

        $sheet->addEye(
            EyeId::fromString('aaa29ab4-e46f-4243-8b7c-20988f2fa25b'),
            EyeLimpidite::fromString(Limpidite::FLOUE->value),
            EyeBrillance::fromString(Brillance::BRILLANTE->value),
            EyeIntensiteCouleur::fromString(IntensiteCouleur::CLAIRE->value),
            EyeTeinte::fromString(RedTeinte::AMBRE->value),
            EyeLarme::fromString(Larme::EPAISSE->value),
            EyeObservation::fromString('Observation'),
            WineType::RedWine,
        );

        $sheet::eraseRecordedEvents();

        $this->assertEquals('aaa29ab4-e46f-4243-8b7c-20988f2fa25b', $sheet->eye()->id()->value());
        $this->assertEquals(Limpidite::FLOUE->value, $sheet->eye()->limpidite()->value());
        $this->assertEquals(Brillance::BRILLANTE->value, $sheet->eye()->brillance()->value());
        $this->assertEquals(IntensiteCouleur::CLAIRE->value, $sheet->eye()->intensiteCouleur()->value());
        $this->assertEquals(RedTeinte::AMBRE->value, $sheet->eye()->teinte()->value());
        $this->assertEquals(Larme::EPAISSE->value, $sheet->eye()->larme()->value());
        $this->assertEquals('Observation', $sheet->eye()->observation()->value());

        $sheet->updateEye(
            EyeLimpidite::fromString(Limpidite::LIMPIDE->value),
            EyeBrillance::fromString(Brillance::TERNE->value),
            EyeIntensiteCouleur::fromString(IntensiteCouleur::INTENSE->value),
            EyeTeinte::fromString(RedTeinte::GRENAT->value),
            EyeLarme::fromString(Larme::FLUIDE->value),
            EyeObservation::fromString('Observation (modifié)'),
            WineType::RedWine,
        );

        $this->assertEquals(Limpidite::LIMPIDE->value, $sheet->eye()->limpidite()->value());
        $this->assertEquals(Brillance::TERNE->value, $sheet->eye()->brillance()->value());
        $this->assertEquals(IntensiteCouleur::INTENSE->value, $sheet->eye()->intensiteCouleur()->value());
        $this->assertEquals(RedTeinte::GRENAT->value, $sheet->eye()->teinte()->value());
        $this->assertEquals(Larme::FLUIDE->value, $sheet->eye()->larme()->value());
        $this->assertEquals('Observation (modifié)', $sheet->eye()->observation()->value());
    }

    public function testUpdateEyeSuccessEventDispatch(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet::eraseRecordedEvents();

        $sheet->addEye(
            EyeId::fromString('aaa29ab4-e46f-4243-8b7c-20988f2fa25b'),
            EyeLimpidite::fromString(Limpidite::FLOUE->value),
            EyeBrillance::fromString(Brillance::BRILLANTE->value),
            EyeIntensiteCouleur::fromString(IntensiteCouleur::CLAIRE->value),
            EyeTeinte::fromString(RedTeinte::AMBRE->value),
            EyeLarme::fromString(Larme::EPAISSE->value),
            EyeObservation::fromString('Observation'),
            WineType::RedWine,
        );

        $sheet::eraseRecordedEvents();

        $sheet->updateEye(
            EyeLimpidite::fromString(Limpidite::LIMPIDE->value),
            EyeBrillance::fromString(Brillance::TERNE->value),
            EyeIntensiteCouleur::fromString(IntensiteCouleur::INTENSE->value),
            EyeTeinte::fromString(RedTeinte::GRENAT->value),
            EyeLarme::fromString(Larme::FLUIDE->value),
            EyeObservation::fromString('Observation (modifié)'),
            WineType::RedWine,
        );

        $this->assertInstanceOf(EyeUpdated::class, $sheet::getRecordedEvent()[0]);
        $this->assertEquals('c3827445-9578-43ef-b437-234feba48ec8', $sheet::getRecordedEvent()[0]->sheetId);
        $this->assertEquals('limpide', $sheet::getRecordedEvent()[0]->limpidite);
        $this->assertEquals('terne', $sheet::getRecordedEvent()[0]->brillance);
        $this->assertEquals('intense', $sheet::getRecordedEvent()[0]->intensiteCouleur);
        $this->assertEquals('grenat', $sheet::getRecordedEvent()[0]->teinte);
        $this->assertEquals('fluide', $sheet::getRecordedEvent()[0]->larme);
        $this->assertEquals('Observation (modifié)', $sheet::getRecordedEvent()[0]->observation);
        $sheet::eraseRecordedEvents();
    }

    public function testUpdateEyeBadTeinte(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet::eraseRecordedEvents();

        $sheet->addEye(
            EyeId::fromString('aaa29ab4-e46f-4243-8b7c-20988f2fa25b'),
            EyeLimpidite::fromString(Limpidite::FLOUE->value),
            EyeBrillance::fromString(Brillance::BRILLANTE->value),
            EyeIntensiteCouleur::fromString(IntensiteCouleur::CLAIRE->value),
            EyeTeinte::fromString(RedTeinte::AMBRE->value),
            EyeLarme::fromString(Larme::EPAISSE->value),
            EyeObservation::fromString('Observation'),
            WineType::RedWine,
        );

        $sheet::eraseRecordedEvents();

        $this->expectException(EyeTeinteIsNotForThisWineTypeException::class);

        $sheet->updateEye(
            EyeLimpidite::fromString(Limpidite::LIMPIDE->value),
            EyeBrillance::fromString(Brillance::TERNE->value),
            EyeIntensiteCouleur::fromString(IntensiteCouleur::INTENSE->value),
            EyeTeinte::fromString(WhiteTeinte::ROUX->value),
            EyeLarme::fromString(Larme::FLUIDE->value),
            EyeObservation::fromString('Observation (modifié)'),
            WineType::RedWine,
        );
    }

    public function testAddNose(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet::eraseRecordedEvents();

        $sheet->addNose(
            NoseId::fromString('4dd4ae6c-5ecd-4a19-be7c-ed6e3c9eddb0'),
            NoseImpression::fromString(Impression::COMPLEXE->value),
            NoseIntensite::fromString(Intensite::OUVERT->value),
            NoseArome::fromString(Arome::FRUITE->value),
            NoseObservation::fromString('Observation'),
        );

        $this->assertEquals('4dd4ae6c-5ecd-4a19-be7c-ed6e3c9eddb0', $sheet->nose()->id()->value());
        $this->assertEquals(Impression::COMPLEXE->value, $sheet->nose()->impression()->value());
        $this->assertEquals(Intensite::OUVERT->value, $sheet->nose()->intensite()->value());
        $this->assertEquals(Arome::FRUITE->value, $sheet->nose()->arome()->value());
        $this->assertEquals('Observation', $sheet->nose()->observation()->value());
    }

    public function testAddNoseSuccessEventDispatch(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet::eraseRecordedEvents();

        $sheet->addNose(
            NoseId::fromString('4dd4ae6c-5ecd-4a19-be7c-ed6e3c9eddb0'),
            NoseImpression::fromString(Impression::COMPLEXE->value),
            NoseIntensite::fromString(Intensite::OUVERT->value),
            NoseArome::fromString(Arome::FRUITE->value),
            NoseObservation::fromString('Observation'),
        );

        $this->assertInstanceOf(NoseAdded::class, $sheet::getRecordedEvent()[0]);
        $this->assertEquals('c3827445-9578-43ef-b437-234feba48ec8', $sheet::getRecordedEvent()[0]->sheetId);
        $this->assertEquals('complexe', $sheet::getRecordedEvent()[0]->impression);
        $this->assertEquals('ouvert', $sheet::getRecordedEvent()[0]->intensite);
        $this->assertEquals('fruité', $sheet::getRecordedEvent()[0]->arome);
        $this->assertEquals('Observation', $sheet::getRecordedEvent()[0]->observation);
        $sheet::eraseRecordedEvents();
    }

    public function testUpdateNose(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet::eraseRecordedEvents();

        $sheet->addNose(
            NoseId::fromString('4dd4ae6c-5ecd-4a19-be7c-ed6e3c9eddb0'),
            NoseImpression::fromString(Impression::COMPLEXE->value),
            NoseIntensite::fromString(Intensite::OUVERT->value),
            NoseArome::fromString(Arome::FRUITE->value),
            NoseObservation::fromString('Observation'),
        );

        $sheet::eraseRecordedEvents();

        $this->assertEquals('4dd4ae6c-5ecd-4a19-be7c-ed6e3c9eddb0', $sheet->nose()->id()->value());
        $this->assertEquals(Impression::COMPLEXE->value, $sheet->nose()->impression()->value());
        $this->assertEquals(Intensite::OUVERT->value, $sheet->nose()->intensite()->value());
        $this->assertEquals(Arome::FRUITE->value, $sheet->nose()->arome()->value());
        $this->assertEquals('Observation', $sheet->nose()->observation()->value());

        $sheet->updateNose(
            NoseImpression::fromString(Impression::DEFAUTS->value),
            NoseIntensite::fromString(Intensite::AROMATIQUE->value),
            NoseArome::fromString(Arome::BALSAMIQUE->value),
            NoseObservation::fromString('Observation (modifié)'),
        );

        $this->assertEquals('4dd4ae6c-5ecd-4a19-be7c-ed6e3c9eddb0', $sheet->nose()->id()->value());
        $this->assertEquals(Impression::DEFAUTS->value, $sheet->nose()->impression()->value());
        $this->assertEquals(Intensite::AROMATIQUE->value, $sheet->nose()->intensite()->value());
        $this->assertEquals(Arome::BALSAMIQUE->value, $sheet->nose()->arome()->value());
        $this->assertEquals('Observation (modifié)', $sheet->nose()->observation()->value());
    }

    public function testUpdateNoseSuccessEventDispatch(): void
    {
        $sheet = Sheet::create(
            SheetId::fromString('c3827445-9578-43ef-b437-234feba48ec8'),
            SheetTastingId::fromString('2ea56c35-8bb9-4c6e-9a49-bd79c5f11537'),
            SheetParticipant::fromString('hugues.gobet@gmail.com'),
        );

        $sheet->addNose(
            NoseId::fromString('4dd4ae6c-5ecd-4a19-be7c-ed6e3c9eddb0'),
            NoseImpression::fromString(Impression::COMPLEXE->value),
            NoseIntensite::fromString(Intensite::OUVERT->value),
            NoseArome::fromString(Arome::FRUITE->value),
            NoseObservation::fromString('Observation'),
        );

        $sheet::eraseRecordedEvents();

        $this->assertEquals('4dd4ae6c-5ecd-4a19-be7c-ed6e3c9eddb0', $sheet->nose()->id()->value());
        $this->assertEquals(Impression::COMPLEXE->value, $sheet->nose()->impression()->value());
        $this->assertEquals(Intensite::OUVERT->value, $sheet->nose()->intensite()->value());
        $this->assertEquals(Arome::FRUITE->value, $sheet->nose()->arome()->value());
        $this->assertEquals('Observation', $sheet->nose()->observation()->value());

        $sheet->updateNose(
            NoseImpression::fromString(Impression::DEFAUTS->value),
            NoseIntensite::fromString(Intensite::AROMATIQUE->value),
            NoseArome::fromString(Arome::BALSAMIQUE->value),
            NoseObservation::fromString('Observation (modifié)'),
        );

        $this->assertInstanceOf(NoseUpdated::class, $sheet::getRecordedEvent()[0]);
        $this->assertEquals('c3827445-9578-43ef-b437-234feba48ec8', $sheet::getRecordedEvent()[0]->sheetId);
        $this->assertEquals('défauts', $sheet::getRecordedEvent()[0]->impression);
        $this->assertEquals('aromatique', $sheet::getRecordedEvent()[0]->intensite);
        $this->assertEquals('balsamique', $sheet::getRecordedEvent()[0]->arome);
        $this->assertEquals('Observation (modifié)', $sheet::getRecordedEvent()[0]->observation);
        $sheet::eraseRecordedEvents();
    }
}
