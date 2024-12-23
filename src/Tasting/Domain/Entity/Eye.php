<?php

declare(strict_types=1);

namespace App\Tasting\Domain\Entity;

use App\Tasting\Domain\ValueObject\EyeBrillance;
use App\Tasting\Domain\ValueObject\EyeId;
use App\Tasting\Domain\ValueObject\EyeIntensiteCouleur;
use App\Tasting\Domain\ValueObject\EyeLarme;
use App\Tasting\Domain\ValueObject\EyeLimpidite;
use App\Tasting\Domain\ValueObject\EyeObservation;
use App\Tasting\Domain\ValueObject\EyeParticipant;
use App\Tasting\Domain\ValueObject\EyeTeinte;

final readonly class Eye
{
    public function __construct(
        private EyeId $id,
        private EyeParticipant $participant,
        private EyeLimpidite $limpidite,
        private EyeBrillance $brillance,
        private EyeIntensiteCouleur $intensiteCouleur,
        private EyeTeinte $teinte,
        private EyeLarme $larme,
        private EyeObservation $observation,
    ) {
    }

    public static function create(
        EyeId $id,
        EyeParticipant $participant,
        EyeLimpidite $limpidite,
        EyeBrillance $brillance,
        EyeIntensiteCouleur $intensiteCouleur,
        EyeTeinte $teinte,
        EyeLarme $larme,
        EyeObservation $observation,
    ): self {
        return new self(
            $id,
            $participant,
            $limpidite,
            $brillance,
            $intensiteCouleur,
            $teinte,
            $larme,
            $observation,
        );
    }

    public function id(): EyeId
    {
        return $this->id;
    }

    public function participant(): EyeParticipant
    {
        return $this->participant;
    }

    public function limpidite(): EyeLimpidite
    {
        return $this->limpidite;
    }

    public function brillance(): EyeBrillance
    {
        return $this->brillance;
    }

    public function intensiteCouleur(): EyeIntensiteCouleur
    {
        return $this->intensiteCouleur;
    }

    public function teinte(): EyeTeinte
    {
        return $this->teinte;
    }

    public function larme(): EyeLarme
    {
        return $this->larme;
    }

    public function observation(): EyeObservation
    {
        return $this->observation;
    }
}
