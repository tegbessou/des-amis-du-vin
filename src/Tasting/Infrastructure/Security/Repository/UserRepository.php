<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\Security\Repository;

use Symfony\Contracts\HttpClient\HttpClientInterface;

final readonly class UserRepository implements UserRepositoryInterface
{
    public function __construct(
        private HttpClientInterface $userApi,
        private string $emailTastingUserService,
        private string $passwordTastingUserService,
    ) {
    }

    #[\Override]
    public function ofEmail(string $email): array
    {
        return json_decode($this->userApi->request('GET', sprintf('%s/%s', UserRepositoryInterface::USER_URI, $email), [
            'headers' => [
                'Authorization' => sprintf('Bearer %s', $this->getAuthorizeToken()),
                'RequestHeaderIdentityProvider' => $this->getAuthorityProvider(),
            ],
        ])->getContent(), true);
    }

    private function getAuthorizeToken(): string
    {
        $response = json_decode($this->userApi->request('POST', UserRepositoryInterface::USER_LOGIN_URI, [
            'json' => [
                'email' => $this->emailTastingUserService,
                'password' => $this->passwordTastingUserService,
            ],
        ])->getContent(), true);

        return $response['token'];
    }

    private function getAuthorityProvider(): string
    {
        return self::AUTHORITY_PROVIDER_FIREBASE;
    }
}