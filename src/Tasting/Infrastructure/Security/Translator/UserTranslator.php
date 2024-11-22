<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\Security\Translator;

use App\Tasting\Domain\ValueObject\User;
use App\Tasting\Domain\ValueObject\UserEmail;
use App\Tasting\Domain\ValueObject\UserFullName;
use App\Tasting\Infrastructure\Security\Exception\UserDoesntExistYetException;

final class UserTranslator
{
    public static function toUser(array $data): User
    {
        if ($data === []) {
            throw new UserDoesntExistYetException();
        }

        return User::create(
            UserEmail::fromString($data['email']),
            // Todo change this
            UserFullName::fromString('Pedro'),
        );
    }
}
