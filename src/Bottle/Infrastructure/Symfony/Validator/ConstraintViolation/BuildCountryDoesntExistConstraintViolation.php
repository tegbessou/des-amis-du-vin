<?php

declare(strict_types=1);

namespace App\Bottle\Infrastructure\Symfony\Validator\ConstraintViolation;

use Symfony\Component\Validator\ConstraintViolation;
use Symfony\Component\Validator\ConstraintViolationList;
use Symfony\Contracts\Translation\TranslatorInterface;

final readonly class BuildCountryDoesntExistConstraintViolation
{
    public function __construct(
        private TranslatorInterface $translator,
    ) {
    }

    public function build(string $country): ConstraintViolationList
    {
        $violations = new ConstraintViolationList();
        $violations->add(new ConstraintViolation(
            $this->translator->trans(
                'bottle.country.doesnt_exist',
                ['country' => $country],
                'validators'
            ),
            null,
            [],
            $country,
            'country',
            $country
        ));

        return $violations;
    }
}