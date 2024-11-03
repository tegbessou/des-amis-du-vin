<?php

declare(strict_types=1);

namespace App\BottleInventory\Application\Projection;

use App\BottleInventory\Application\Exception\BottleDoesntExistException;
use App\BottleInventory\Application\Projection\Projector\AddPictureBottleListProjector;
use App\BottleInventory\Domain\Event\BottlePictureAdded;
use Monolog\Attribute\WithMonologChannel;
use Psr\Log\LoggerInterface;

#[WithMonologChannel('bottle_inventory')]
final readonly class AddPictureBottleListProjection
{
    public function __construct(
        private AddPictureBottleListProjector $addPictureBottleLittleProjector,
        private LoggerInterface $logger,
    ) {
    }

    public function __invoke(BottlePictureAdded $event): void
    {
        try {
            $this->addPictureBottleLittleProjector->project(
                $event->bottleId,
                $event->picture,
            );
        } catch (BottleDoesntExistException $exception) {
            $this->logger->error(
                'Add picture bottle projection: Bottle list projection creation failed',
                [
                    'exception' => $exception->getMessage(),
                ],
            );

            throw $exception;
        }
    }
}
