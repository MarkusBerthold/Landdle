﻿using Landdle.Models;

namespace Landdle.Services
{
    public interface IGuessService
    {
        Task<List<Country>> GetListOfAllCountryNames();
        Task<CountryInformation> GuessCountry(int countryId);
    }
}
