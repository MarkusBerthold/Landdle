using Landdle.Data;
using Landdle.Models;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace Landdle.Services
{
    public class GuessService : IGuessService
    {
        private readonly DataContext _dataContext;

        public GuessService(DataContext dataContext)
        {
            _dataContext = dataContext;
        }

        public async Task<List<Country>> GetListOfAllCountryNames()
        {
            var country = await _dataContext.Country.Select(x => new Country { Id = x.Id, Name = x.Name }).OrderBy(x => x.Name).ToListAsync();            
            return country;
        }

        public async Task<CountryInformation> GetCountryInformation(int countryId)
        {
            var countryIdParameter = new SqlParameter("@countryId", countryId);
            var countryInformation = await _dataContext.Database.SqlQuery<CountryInformation>($"getCountryInformation @CountryId = {countryIdParameter}").ToListAsync();
            return countryInformation.FirstOrDefault();
        }
    }
}
