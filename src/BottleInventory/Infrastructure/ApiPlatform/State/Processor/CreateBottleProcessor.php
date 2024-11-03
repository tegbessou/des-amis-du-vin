<?php

declare(strict_types=1);

namespace App\BottleInventory\Infrastructure\ApiPlatform\State\Processor;

use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProcessorInterface;
use ApiPlatform\Validator\Exception\ValidationException;
use App\BottleInventory\Application\Command\CreateBottleCommand;
use App\BottleInventory\Application\Query\GetBottleQuery;
use App\BottleInventory\Domain\Enum\Rate;
use App\BottleInventory\Domain\Enum\WineType;
use App\BottleInventory\Domain\Exception\BottleCountryDoesntExistException;
use App\BottleInventory\Domain\Exception\BottleGrapeVarietiesDoesntExistException;
use App\BottleInventory\Infrastructure\ApiPlatform\Resource\BottleResource;
use App\BottleInventory\Infrastructure\Symfony\Validator\ConstraintViolation\BuildCountryDoesntExistConstraintViolation;
use App\BottleInventory\Infrastructure\Symfony\Validator\ConstraintViolation\BuildGrapeVarietiesDoesntExistConstraintViolation;
use Monolog\Attribute\WithMonologChannel;
use Psr\Log\LoggerInterface;
use TegCorp\SharedKernelBundle\Application\Command\CommandBusInterface;
use TegCorp\SharedKernelBundle\Application\Query\QueryBusInterface;
use TegCorp\SharedKernelBundle\Infrastructure\Webmozart\Assert;

/**
 * @implements ProcessorInterface<BottleResource, void>
 */
#[WithMonologChannel('bottle_inventory')]
final readonly class CreateBottleProcessor implements ProcessorInterface
{
    public function __construct(
        private CommandBusInterface $commandBus,
        private QueryBusInterface $queryBus,
        private BuildCountryDoesntExistConstraintViolation $buildCountryDoesntExistConstraintViolation,
        private BuildGrapeVarietiesDoesntExistConstraintViolation $buildGrapeVarietiesDoesntExistConstraintViolation,
        private LoggerInterface $logger,
    ) {
    }

    #[\Override]
    public function process(mixed $data, Operation $operation, array $uriVariables = [], array $context = []): BottleResource
    {
        Assert::isInstanceOf($data, BottleResource::class);
        Assert::notNull($data->name);
        Assert::notNull($data->estateName);
        Assert::notNull($data->wineType);
        Assert::isInstanceOf($data->wineType, WineType::class);
        Assert::notNull($data->year);
        Assert::year($data->year);
        Assert::notNull($data->grapeVarieties);
        Assert::notNull($data->rate);
        Assert::isInstanceOf($data->rate, Rate::class);
        Assert::email($data->ownerId);
        Assert::notNull($data->ownerId);

        if ($data->price !== null) {
            Assert::positiveFloat($data->price);
        }

        try {
            $bottleId = $this->commandBus->dispatch(
                new CreateBottleCommand(
                    $data->name,
                    $data->estateName,
                    $data->wineType->value,
                    $data->year,
                    $data->grapeVarieties,
                    $data->rate->value,
                    $data->ownerId,
                    $data->country,
                    $data->price,
                ),
            );
        } catch (BottleCountryDoesntExistException $exception) {
            $this->logger->error(
                'Create bottle: Country doesn\'t exist',
                [
                    'country' => $exception->country,
                ],
            );

            throw new ValidationException($this->buildCountryDoesntExistConstraintViolation->build($exception->country));
        } catch (BottleGrapeVarietiesDoesntExistException $exception) {
            $this->logger->error(
                'Create bottle: Grape varieties doesn\'t exist',
                [
                    'grape_varieties' => $exception->grapeVarieties,
                ],
            );

            throw new ValidationException($this->buildGrapeVarietiesDoesntExistConstraintViolation->build($exception->grapeVarieties));
        } catch (\InvalidArgumentException $exception) {
            $this->logger->error(
                'Create bottle: Bottle creation failed',
                [
                    'exception' => $exception->getMessage(),
                ],
            );

            throw $exception;
        }

        $bottle = $this->queryBus->ask(
            new GetBottleQuery($bottleId->value()),
        );

        if ($bottle === null) {
            throw new \LogicException('Bottle not found');
        }

        return BottleResource::fromModel($bottle);
    }
}
