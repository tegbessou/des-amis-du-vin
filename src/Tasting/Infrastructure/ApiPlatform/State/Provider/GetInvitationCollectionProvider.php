<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\ApiPlatform\State\Provider;

use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProviderInterface;
use App\Tasting\Application\Query\GetInvitationsQuery;
use App\Tasting\Infrastructure\ApiPlatform\Resource\InvitationResource;
use TegCorp\SharedKernelBundle\Application\Query\QueryBusInterface;
use TegCorp\SharedKernelBundle\Infrastructure\ApiPlatform\State\Pagination\Paginator;

/**
 * @implements ProviderInterface<InvitationResource>
 */
final readonly class GetInvitationCollectionProvider implements ProviderInterface
{
    public function __construct(
        private QueryBusInterface $queryBus,
    ) {
    }

    /**
     * @return Paginator<InvitationResource>|list<InvitationResource>
     */
    #[\Override]
    public function provide(Operation $operation, array $uriVariables = [], array $context = []): Paginator|array
    {
        $targetEmail = $context['filters']['target.email'] ?? null;

        $models = $this->queryBus->ask(
            new GetInvitationsQuery(
                $targetEmail,
            ),
        );

        $resources = [];

        foreach ($models as $model) {
            $resources[] = InvitationResource::fromModel($model, $model->subject());
        }

        if (null !== $paginator = $models->paginator()) {
            $resources = new Paginator(
                new \ArrayIterator($resources),
                (float) $paginator->getCurrentPage(),
                (float) $paginator->getItemsPerPage(),
                (float) $paginator->getLastPage(),
                (float) $paginator->getTotalItems(),
            );
        }

        return $resources;
    }
}
