<?php

declare(strict_types=1);

namespace App\Security\Infrastructure\Firebase\Security\Authenticator;

use App\Security\Domain\Exception\ExpiredTokenException;
use App\Security\Domain\Exception\InvalidPayloadException;
use App\Security\Domain\Service\AuthenticateUserInterface;
use App\Security\Domain\ValueObject\UserAuthenticated;
use Kreait\Firebase\Auth\SignIn\FailedToSignIn;
use Kreait\Firebase\Contract\Auth;
use Lexik\Bundle\JWTAuthenticationBundle\Exception\InvalidTokenException;

final readonly class AuthenticateUserFirebase implements AuthenticateUserInterface
{
    public function __construct(
        private Auth $auth,
    ) {
    }

    #[\Override]
    public function authenticateUserWithApple(string $token): UserAuthenticated
    {
        try {
            $payload = $this->auth->parseToken(
                $token,
            );

            if ($payload->isExpired(new \DateTime())) {
                throw new ExpiredTokenException();
            }
        } catch (FailedToSignIn) {
            throw new InvalidTokenException();
        }

        $email = $payload->claims()->get('email');

        if ($email === null) {
            throw new InvalidPayloadException();
        }

        return new UserAuthenticated($payload->claims()->get('email'));
    }

    #[\Override]
    public function authenticateUserWithGoogle(string $token): UserAuthenticated
    {
        try {
            $payload = $this->auth->signInWithIdpAccessToken(AuthenticateUserInterface::IDENTITY_PROVIDER_GOOGLE, $token);
        } catch (FailedToSignIn) {
            throw new InvalidTokenException();
        }

        if (!isset($payload->data()['email'])) {
            throw new InvalidPayloadException($payload->data()['email'] ?? '');
        }

        return new UserAuthenticated($payload->data()['email']);
    }

    #[\Override]
    public function authenticateUserWithFirebase(string $token): UserAuthenticated
    {
        try {
            $payload = $this->auth->parseToken($token);
        } catch (FailedToSignIn) {
            throw new InvalidTokenException();
        }

        if (!$payload->claims()->has('email')) {
            throw new InvalidPayloadException($payload->claims()->get('email') ?? '');
        }

        return new UserAuthenticated($payload->claims()->get('email'));
    }
}
