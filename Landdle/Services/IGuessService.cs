using Landdle.Models;

namespace Landdle.Services
{
    public interface IGuessService
    {
        Task<List<Country>> GetAllCountries();
    }
}
