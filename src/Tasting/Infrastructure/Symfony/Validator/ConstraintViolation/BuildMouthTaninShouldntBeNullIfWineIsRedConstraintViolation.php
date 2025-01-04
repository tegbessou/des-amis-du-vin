<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\Symfony\Validator\ConstraintViolation;

use Symfony\Component\Validator\ConstraintViolation;
use Symfony\Component\Validator\ConstraintViolationList;
use Symfony\Contracts\Translation\TranslatorInterface;

final readonly class BuildMouthTaninShouldntBeNullIfWineIsRedConstraintViolation
{
    public function __construct(
        private TranslatorInterface $translator,
    ) {
    }

    public function build(): ConstraintViolationList
    {
        $violations = new ConstraintViolationList();
        $violations->add(new ConstraintViolation(
            $this->translator->trans(
                'tasting.add_mouth.tanin.empty_for_red_wine',
                [],
                'validators'
            ),
            null,
            [],
            null,
            'tanin',
            null,
        ));

        return $violations;
    }
}