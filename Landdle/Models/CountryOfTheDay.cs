namespace Landdle.Models
{
    public class CountryOfTheDay
    {
        public int Id { get; set; }
        public DateOnly Date { get; set; }
        public int CountryId { get; set; }

        // Navigations (to set foreign keys)
        public Country Country { get; set; } = null!;
    }
}
