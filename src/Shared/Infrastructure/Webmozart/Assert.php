<?php

declare(strict_types=1);

namespace App\Shared\Infrastructure\Webmozart;

use Webmozart\Assert\Assert as BaseAssert;

final class Assert extends BaseAssert
{
    private const PICTURE_SUPPORTED_EXTENSION = ['jpg', 'jpeg', 'png', 'webp'];

    public static function year(int $value, string $message = ''): void
    {
        if ($value < 1900 || $value > 2100) {
            static::reportInvalidArgument(\sprintf(
                $message ?: 'Expected a year between 1900 and 2100. Got: %s',
                static::typeToString($value)
            ));
        }
    }

    public static function positiveFloat(float $value, string $message = ''): void
    {
        if ($value < 0.00) {
            static::reportInvalidArgument(\sprintf(
                $message ?: 'Expected a positive float. Got: %s',
                static::typeToString($value)
            ));
        }
    }

    public static function picture(string $path, string $message = ''): void
    {
        $matchExtensionOnce = false;

        foreach (self::PICTURE_SUPPORTED_EXTENSION as $extension) {
            if (!str_ends_with($path, $extension)) {
                continue;
            }

            $matchExtensionOnce = true;
        }

        if ($matchExtensionOnce === false) {
            static::reportInvalidArgument(\sprintf(
                $message ?: 'Expect extension was in this list for picture %s. Got: %s',
                implode(', ', self::PICTURE_SUPPORTED_EXTENSION),
                $path,
            ));
        }
    }

    public static function dateNotInferiorThanToday(\DateTimeImmutable $date, string $message = ''): void
    {
        $now = new \DateTimeImmutable();

        if ($date->getTimestamp() > $now->getTimestamp()) {
            static::reportInvalidArgument(\sprintf(
                $message ?: 'Expected a date not inferior than today. Got: %s',
                $date->format('Y-m-d')
            ));
        }
    }
}
