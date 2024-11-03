<?php

declare(strict_types=1);

namespace App\BottleInventory\Application\Projection;

use App\BottleInventory\Application\Exception\BottleDoesntExistException;
use App\BottleInventory\Application\Projection\Projector\UpdateBottleListProjector;
use App\BottleInventory\Domain\Event\BottleUpdated;
use Monolog\Attribute\WithMonologChannel;
use Psr\Log\LoggerInterface;

#[WithMonologChannel('bottle_inventory')]
final readonly class UpdateBottleListProjection
{
    public function __construct(
        private UpdateBottleListProjector $updateBottleListProjector,
        private LoggerInterface $logger,
    ) {
    }

    public function __invoke(BottleUpdated $event): void
    {
        try {
            $this->updateBottleListProjector->project(
                $event->bottleId,
                $event->name,
                $event->estateName,
                $event->wineType,
                $event->year,
                $event->rate,
            );
        } catch (BottleDoesntExistException $exception) {
            $this->logger->error(
                'Update bottle projection: Bottle list projection update failed',
                [
                    'exception' => $exception->getMessage(),
                ],
            );

            throw $exception;
        }
    }
}
