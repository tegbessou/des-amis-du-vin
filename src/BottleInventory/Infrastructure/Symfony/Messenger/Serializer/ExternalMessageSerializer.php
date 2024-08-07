<?php

declare(strict_types=1);

namespace App\BottleInventory\Infrastructure\Symfony\Messenger\Serializer;

use App\BottleInventory\Infrastructure\Symfony\Messenger\ExternalMessage\UserCreatedMessage;
use Symfony\Component\Messenger\Envelope;
use Symfony\Component\Messenger\Transport\Serialization\SerializerInterface;

final class ExternalMessageSerializer implements SerializerInterface
{
    private const USER_CREATED_MESSAGE = 'UserCreatedMessage';

    #[\Override]
    public function decode(array $encodedEnvelope): Envelope
    {
        $body = $encodedEnvelope['body'];
        $headers = $encodedEnvelope['headers'];
        $data = json_decode((string) $body, true);

        if (str_contains((string) $headers['type'], self::USER_CREATED_MESSAGE)) {
            return new Envelope(new UserCreatedMessage(
                $data['email'],
                $data['fullName'],
            ));
        }

        throw new \LogicException('Message type not supported');
    }

    #[\Override]
    public function encode(Envelope $envelope): array
    {
        throw new \LogicException('Transport & serializer not meant for sending messages');
    }
}
