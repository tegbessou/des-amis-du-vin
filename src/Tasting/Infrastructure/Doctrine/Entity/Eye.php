<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\Doctrine\Entity;

use App\Tasting\Domain\Enum\Brillance;
use App\Tasting\Domain\Enum\IntensiteCouleur;
use App\Tasting\Domain\Enum\Larme;
use App\Tasting\Domain\Enum\Limpidite;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity]
class Eye
{
    public function __construct(
        #[ORM\Id]
        #[ORM\Column(name: 'id', type: 'uuid', unique: true)]
        public string $id,
        #[ORM\ManyToOne(targetEntity: Tasting::class, inversedBy: 'eyes')]
        #[ORM\JoinColumn(name: 'tasting_id', referencedColumnName: 'id')]
        public ?Tasting $tasting,
        #[ORM\Column(name: 'participant', type: 'string')]
        public string $participant,
        #[ORM\Column(name: 'limpidite', type: 'string', enumType: Limpidite::class)]
        public Limpidite $limpidite,
        #[ORM\Column(name: 'brillance', type: 'string', enumType: Brillance::class)]
        public Brillance $brillance,
        #[ORM\Column(name: 'intensite_couleur', type: 'string', enumType: IntensiteCouleur::class)]
        public IntensiteCouleur $intensiteCouleur,
        #[ORM\Column(name: 'teinte', type: 'string')]
        public string $teinte,
        #[ORM\Column(name: 'larme', type: 'string', enumType: Larme::class)]
        public Larme $larme,
        #[ORM\Column(name: 'observation', type: 'text')]
        public string $observation,
    ) {
    }
}