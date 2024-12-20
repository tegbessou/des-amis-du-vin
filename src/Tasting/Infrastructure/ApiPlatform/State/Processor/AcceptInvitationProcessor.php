<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\ApiPlatform\State\Processor;

use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProcessorInterface;
use App\Tasting\Application\Command\AcceptInvitationCommand;
use App\Tasting\Domain\Exception\InvitationDoesntExistException;
use App\Tasting\Domain\Exception\TastingDoesntExistException;
use App\Tasting\Infrastructure\ApiPlatform\Resource\PostTastingAcceptInvitationResource;
use Monolog\Attribute\WithMonologChannel;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use TegCorp\SharedKernelBundle\Application\Command\CommandBusInterface;
use TegCorp\SharedKernelBundle\Infrastructure\Webmozart\Assert;

/**
 * @implements ProcessorInterface<PostTastingAcceptInvitationResource, void>
 */
#[WithMonologChannel('tasting')]
final readonly class AcceptInvitationProcessor implements ProcessorInterface
{
    public function __construct(
        private CommandBusInterface $commandBus,
        private LoggerInterface $logger,
    ) {
    }

    #[\Override]
    public function process(mixed $data, Operation $operation, array $uriVariables = [], array $context = []): void
    {
        Assert::uuid($uriVariables['tastingId']);
        Assert::uuid($uriVariables['id']);
        Assert::isInstanceOf($data, PostTastingAcceptInvitationResource::class);

        try {
            $this->commandBus->dispatch(
                new AcceptInvitationCommand(
                    $uriVariables['tastingId'],
                    $uriVariables['id'],
                ),
            );
        } catch (TastingDoesntExistException $exception) {
            $this->logger->error(
                'Accept invitation: Tasting doesn\'t exist',
                [
                    'tastingId' => $exception->tastingId,
                ],
            );

            throw new NotFoundHttpException();
        } catch (InvitationDoesntExistException $exception) {
            $this->logger->error(
                'Accept invitation: Invitation doesn\'t exist',
                [
                    'invitationId' => $exception->invitationId,
                ],
            );

            throw new NotFoundHttpException();
        }
    }
}
