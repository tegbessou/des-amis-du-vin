<?php

declare(strict_types=1);

namespace App\Tasting\Application\Query;

use App\Tasting\Domain\Entity\Invitation;
use App\Tasting\Domain\Repository\InvitationRepositoryInterface;
use App\Tasting\Domain\ValueObject\InvitationId;
use TegCorp\SharedKernelBundle\Application\Query\AsQueryHandler;

#[AsQueryHandler]
final readonly class GetInvitationQueryHandler
{
    public function __construct(
        private InvitationRepositoryInterface $invitationReadRepository,
    ) {
    }

    public function __invoke(GetInvitationQuery $query): ?Invitation
    {
        return $this->invitationReadRepository->ofId(
            InvitationId::fromString($query->id),
        );
    }
}
