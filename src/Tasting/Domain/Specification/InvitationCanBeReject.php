<?php

declare(strict_types=1);

namespace App\Tasting\Domain\Specification;

use App\Tasting\Domain\Entity\Invitation;
use App\Tasting\Domain\Exception\InvitationMustBePendingException;
use App\Tasting\Domain\Exception\InvitationMustBeSentBeforeBeingRejectedException;

final readonly class InvitationCanBeReject
{
    public function satisfiedBy(
        Invitation $invitation,
    ): void {
        if (!$invitation->status()->isPending()) {
            throw new InvitationMustBePendingException();
        }

        if (!$invitation->isAlreadySent()) {
            throw new InvitationMustBeSentBeforeBeingRejectedException();
        }
    }
}