<?php

declare(strict_types=1);

namespace App\BottleInventory\Domain\Service;

use App\BottleInventory\Domain\Entity\Bottle;

interface UploadBottlePictureServiceInterface
{
    public function upload(Bottle $bottle, string $picturePath, string $pictureOriginalName): void;
}
