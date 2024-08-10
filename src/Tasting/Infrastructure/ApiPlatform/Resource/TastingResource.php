<?php

declare(strict_types=1);

namespace App\Tasting\Infrastructure\ApiPlatform\Resource;

use ApiPlatform\Metadata\ApiProperty;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\Post;
use App\Tasting\Domain\Entity\Tasting;
use App\Tasting\Infrastructure\ApiPlatform\State\Processor\InviteParticipantsToTastingProcessor;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Serializer\Attribute\Groups;
use Symfony\Component\Uid\AbstractUid;
use Symfony\Component\Uid\Uuid;
use Symfony\Component\Validator\Constraints as Assert;

#[ApiResource(
    operations: [
        new Post(
            uriTemplate: '/tastings/{id}/invite',
            status: Response::HTTP_NO_CONTENT,
            denormalizationContext: ['groups' => ['invite_participants_to_tasting']],
            validationContext: ['groups' => ['invite_participants_to_tasting']],
            output: false,
            processor: InviteParticipantsToTastingProcessor::class,
        ),
    ]
)]
final class TastingResource
{
    public function __construct(
        #[ApiProperty(identifier: true)]
        #[Groups(['invite_participants_to_tasting'])]
        public ?AbstractUid $id = null,
        #[ApiProperty]
        #[Groups(['invite_participants_to_tasting'])]
        #[Assert\NotBlank(groups: ['invite_participants_to_tasting'])]
        public array $participants = [],
    ) {
    }

    public static function fromModel(Tasting $tasting): self
    {
        return new self(
            new Uuid($tasting->id()->value()),
            $tasting->participants()->values(),
        );
    }
}
