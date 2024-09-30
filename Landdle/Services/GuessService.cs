using Landdle.Data;
using Landdle.Models;
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

        public async Task<List<Country>> GetAllCountries()
        {
            var country = await _dataContext.Country.ToListAsync();
            return country;
        }
    }
}
