namespace Landdle.Models
{
    public class CountryContinent
    {
        public int Id { get; set; }
        public int CountryId { get; set; }
        public int ContinentId { get; set; }
        
        // Navigations (to set foreign keys)
        public Country Country { get; set; } = null!;
        public Continent Continent { get; set; } = null!;
    }
}
