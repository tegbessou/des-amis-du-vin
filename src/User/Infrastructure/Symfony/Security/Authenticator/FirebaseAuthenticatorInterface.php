<?php

declare(strict_types=1);

namespace App\User\Infrastructure\Symfony\Security\Authenticator;

interface FirebaseAuthenticatorInterface
{
    public const HEADER_IDENTITY_PROVIDER = 'RequestHeaderIdentityProvider';
}
