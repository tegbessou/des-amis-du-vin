<?php

declare(strict_types=1);

namespace App\BottleInventory\Infrastructure\VichUploader;

use App\BottleInventory\Domain\Entity\Bottle;
use App\BottleInventory\Domain\Exception\ReplaceBottlePictureFileNotFoundException;
use App\BottleInventory\Domain\Service\UploadBottlePictureInterface;
use App\BottleInventory\Infrastructure\ApiPlatform\Resource\BottleResource;
use App\BottleInventory\Infrastructure\CodeBuds\CompressPicture;
use Symfony\Component\HttpFoundation\File\Exception\FileNotFoundException;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Vich\UploaderBundle\Handler\UploadHandler;

final readonly class UploadBottlePictureVichUploader implements UploadBottlePictureInterface
{
    public function __construct(
        private UploadHandler $uploadHandler,
    ) {
    }

    #[\Override]
    public function upload(
        Bottle $bottle,
        string $picturePath,
        string $pictureOriginalName,
    ): string {
        try {
            $bottleResource = BottleResource::fromModel($bottle);

            $file = new UploadedFile(
                $picturePath,
                $pictureOriginalName,
            );

            $bottleResource->picture = $file;

            $this->uploadHandler->upload($bottleResource, 'picture');

            $compressedPicture = CompressPicture::compressPicture(
                $file->getPathname(),
            );

            $this->uploadHandler->remove($bottleResource, 'picture');

            return $compressedPicture->pictureOriginalName;
        } catch (FileNotFoundException) {
            throw new ReplaceBottlePictureFileNotFoundException();
        }
    }
}
