<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\Symfony\Messenger\Message;

interface InvitationStatusChangedInterface
{
    public function getInvitationId(): string;
}