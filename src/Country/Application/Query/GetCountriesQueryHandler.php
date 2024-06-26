<?php

declare(strict_types=1);

namespace App\Country\Application\Query;

use App\Country\Domain\Repository\CountryReadRepositoryInterface;
use App\Country\Domain\ValueObject\CountryName;
use App\Shared\Application\Query\AsQueryHandler;

#[AsQueryHandler]
final readonly class GetCountriesQueryHandler
{
    public function __construct(
        private CountryReadRepositoryInterface $countryRepository,
    ) {
    }

    public function __invoke(GetCountriesQuery $query): CountryReadRepositoryInterface
    {
        $countryRepository = $this->countryRepository;

        $countryRepository = $countryRepository->sortName();

        if ($query->name !== null) {
            $countryRepository = $countryRepository->withName(CountryName::fromString($query->name));
        }

        if ($query->page !== null && $query->limit !== null) {
            $countryRepository = $countryRepository->withPagination($query->page, $query->limit);
        }

        return $countryRepository;
    }
}
