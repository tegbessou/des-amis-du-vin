<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\Symfony\Validator\ConstraintViolation;

use Symfony\Component\Validator\ConstraintViolation;
use Symfony\Component\Validator\ConstraintViolationList;
use Symfony\Contracts\Translation\TranslatorInterface;

final readonly class BuildMouthSucreShouldntBeNullIfWineIsSweetConstraintViolation
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
                'tasting.add_mouth.sucre.empty_for_sweet_wine',
                [],
                'validators'
            ),
            null,
            [],
            null,
            'sucre',
            null,
        ));

        return $violations;
    }
}
