<?php

declare(strict_types=1);

namespace DataFixtures\Tasting\ReadModel;

use App\Tasting\Application\ReadModel\Sheet;
use Doctrine\Bundle\MongoDBBundle\Fixture\Fixture;
use Doctrine\Persistence\ObjectManager;

final class SheetFixtures extends Fixture
{
    #[\Override]
    public function load(ObjectManager $manager): void
    {
        $sheets = [];

        $sheets[] = new Sheet(
            '1a9ea2de-bb0b-4104-ab6a-8b57d2e65394',
            '2ea56c35-8bb9-4c6e-9a49-bd79c5f11537',
            'hugues.gobet@gmail.com',
            'Pedor',
        );

        $sheets[] = new Sheet(
            '53fdb99f-b379-4d28-a1c8-541df07a7c34',
            '964a3cb8-5fbd-4678-a5cd-e371c09ea722',
            'hugues.gobet@gmail.com',
            'Pedor',
            'opalescente',
            'lumineuse',
            'intense',
            'ambre',
            'fluide',
            'Observation',
            'simple',
            'ouvert',
            'boisée',
            'Observation',
        );

        foreach ($sheets as $sheet) {
            $manager->persist($sheet);
        }

        $manager->flush();
    }
}
