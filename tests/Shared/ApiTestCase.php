<?php

declare(strict_types=1);

namespace App\Tests\Shared;

use ApiPlatform\Symfony\Bundle\Test\ApiTestCase as BaseApiTestCase;

class ApiTestCase extends BaseApiTestCase
{
    private const APPLE_IDENTITY_PROVIDER = 'apple.com';
    private const GOOGLE_IDENTITY_PROVIDER = 'google.com';

    private $response;

    protected function get(string $uri, array $headers = [], string $identityProvider = 'apple'): void
    {
        $client = static::createClient();

        $this->response = $client->request('GET', $uri, [
            'headers' => self::getHeaders($headers, $identityProvider),
        ]);
    }

    protected function post(string $uri, array $json, array $headers = [], string $identityProvider = 'apple'): void
    {
        $client = static::createClient();

        $this->response = $client->request('POST', $uri, [
            'headers' => self::getHeaders($headers, $identityProvider),
            'json' => $json,
        ]);
    }

    protected function postFile(string $uri, array $files, array $headers = [], string $identityProvider = 'apple'): void
    {
        $client = static::createClient();

        $headers['Content-Type'] = 'multipart/form-data';

        $this->response = $client->request('POST', $uri, [
            'headers' => self::getHeaders($headers, $identityProvider),
            'extra' => [
                'files' => $files,
            ],
        ]);
    }

    protected function assertAttributeExistInEachElement(
        string $attribute,
        string $message = '',
    ): void {
        $members = $this->getResponseContent()['hydra:member'];

        if ($members === []) {
            throw new \InvalidArgumentException('Response does not contain any member');
        }

        foreach ($members as $member) {
            self::assertArrayHasKey($attribute, $member, $message);
        }
    }

    private static function getHeaders(array $headers = [], string $identityProvider = 'apple'): array
    {
        $default = [
            'Content-Type' => 'application/ld+json',
            'Authorization' => sprintf('Bearer %s', self::getBearerToken()),
            'RequestHeaderIdentityProvider' => self::getIdentityProvider($identityProvider),
        ];

        return array_merge($default, $headers);
    }

    private static function getBearerToken(): string
    {
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c';
    }

    private static function getIdentityProvider(
        string $provider = 'apple',
    ): string {
        return match ($provider) {
            'apple' => self::APPLE_IDENTITY_PROVIDER,
            'google' => self::GOOGLE_IDENTITY_PROVIDER,
        };
    }

    private function getResponseContent(): array
    {
        return json_decode((string) $this->response->getContent(), true);
    }
}
