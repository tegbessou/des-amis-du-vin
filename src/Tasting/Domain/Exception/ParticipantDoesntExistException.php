<?php

declare(strict_types=1);

namespace App\Tasting\Domain\Exception;

final class ParticipantDoesntExistException extends \Exception
{
    public function __construct(
        public readonly string $id,
    ) {
        parent::__construct(sprintf('Participant %s does not exist', $this->id));
    }
}
