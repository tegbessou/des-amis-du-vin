<?php

declare(strict_types=1);

namespace App\Tasting\Domain\Exception;

final class TastingDoesntExistException extends \Exception
{
    public function __construct(string $participantId)
    {
        parent::__construct(sprintf('Tasting with id %s doesn\'t exist', $participantId));
    }
}