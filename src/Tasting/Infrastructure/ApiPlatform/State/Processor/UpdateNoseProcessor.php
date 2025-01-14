<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\ApiPlatform\State\Processor;

use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProcessorInterface;
use ApiPlatform\Validator\Exception\ValidationException;
use App\Tasting\Application\Command\UpdateNoseCommand;
use App\Tasting\Application\Exception\SheetDoesntExistException;
use App\Tasting\Domain\Exception\NoseShouldBeAddedException;
use App\Tasting\Infrastructure\ApiPlatform\Resource\PutSheetNoseResource;
use App\Tasting\Infrastructure\Symfony\Validator\ConstraintViolation\BuildNoseNotAlreadyAddedConstraintViolation;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use TegCorp\SharedKernelBundle\Application\Command\CommandBusInterface;
use TegCorp\SharedKernelBundle\Infrastructure\Webmozart\Assert;

/**
 * @implements ProcessorInterface<PutSheetNoseResource, void>
 */
final readonly class UpdateNoseProcessor implements ProcessorInterface
{
    public function __construct(
        private CommandBusInterface $commandBus,
        private LoggerInterface $logger,
        private BuildNoseNotAlreadyAddedConstraintViolation $buildNoseNotAlreadyAddedConstraintViolation,
    ) {
    }

    #[\Override]
    public function process(mixed $data, Operation $operation, array $uriVariables = [], array $context = []): void
    {
        Assert::uuid($uriVariables['id']);
        Assert::string($data->impression);
        Assert::string($data->intensite);
        Assert::string($data->arome);
        Assert::string($data->observation);

        try {
            $this->commandBus->dispatch(
                new UpdateNoseCommand(
                    $uriVariables['id'],
                    $data->impression,
                    $data->intensite,
                    $data->arome,
                    $data->observation,
                ),
            );
        } catch (SheetDoesntExistException $exception) {
            $this->logger->error(
                'Update nose: Sheet doesn\'t exist',
                [
                    'sheetId' => $exception->sheetId,
                ],
            );

            throw new NotFoundHttpException();
        } catch (NoseShouldBeAddedException) {
            $this->logger->error(
                'Update nose: Nose not already added',
            );

            throw new ValidationException($this->buildNoseNotAlreadyAddedConstraintViolation->build());
        }
    }
}
