<?php

declare(strict_types=1);

$finder = (new PhpCsFixer\Finder())
    ->in(__DIR__)
    ->exclude('var')
    ->exclude('tests/Shared')
    ->exclude('src/BottleInventory/Application/ReadModel')
    ->exclude('src/Country/Application/ReadModel')
    ->exclude('src/Security/Application/ReadModel')
    ->exclude('src/Tasting/Application/ReadModel')
;

return (new PhpCsFixer\Config())
    ->setRules([
        '@Symfony' => true,
        'declare_strict_types' => true,
        'final_class' => true,
        'yoda_style' => ['equal' => false, 'identical' => false, 'less_and_greater' => false],
    ])
    ->setFinder($finder)
;
