<?php

declare(strict_types=1);

namespace DataFixtures\Security;

use App\Security\Domain\Entity\User;
use App\Security\Domain\ValueObject\UserEmail;
use App\Security\Domain\ValueObject\UserId;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

final class UserFixtures extends Fixture
{
    #[\Override]
    public function load(ObjectManager $manager): void
    {
        $users = [];
        $users[] = User::create(
            UserId::fromString('ee036f3b-d488-43be-b10c-fdbdcb0a6c0b'),
            UserEmail::fromString('hugues.gobet@gmail.com'),
        );

        $users[] = User::create(
            UserId::fromString('05e8984e-45cd-44d4-8d42-f5c4e6bd6192'),
            UserEmail::fromString('root@gmail.com'),
        );

        $users[] = User::create(
            UserId::fromString('246d37c8-c196-40bc-a8a8-c741ec8e3a13'),
            UserEmail::fromString('services.bottle_inventory@gmail.com'),
        );

        $users[] = User::create(
            UserId::fromString('cf9f5035-23ca-4a48-bc5d-c5b25ff55f01'),
            UserEmail::fromString('services.tasting@gmail.com'),
        );

        foreach ($users as $user) {
            $manager->persist($user);
        }

        $manager->flush();
    }
}
