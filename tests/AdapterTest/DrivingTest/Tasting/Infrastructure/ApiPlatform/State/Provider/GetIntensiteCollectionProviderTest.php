<?php

declare(strict_types=1);

namespace AdapterTest\DrivingTest\Tasting\Infrastructure\ApiPlatform\State\Provider;

use Shared\ApiTestCase;

final class GetIntensiteCollectionProviderTest extends ApiTestCase
{
    public function testGetIntensites(): void
    {
        $this->get('/api/intensites');

        $this->assertResponseStatusCodeSame(200);
        $this->assertJsonContains([
            '@context' => '/api/contexts/Intensite',
            '@id' => '/api/intensites',
            '@type' => 'Collection',
            'member' => [
                [
                    '@type' => 'Intensite',
                    'value' => 'intime',
                ],
                [
                    '@type' => 'Intensite',
                    'value' => 'ouvert',
                ],
                [
                    '@type' => 'Intensite',
                    'value' => 'aromatique',
                ],
                [
                    '@type' => 'Intensite',
                    'value' => 'discret fermé',
                ],
            ],
            'totalItems' => 4,
        ]);
    }
}