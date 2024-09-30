namespace Landdle.Models
{
    public class Country
    {
        public int Id { get; set; }
        public required string Name { get; set; }
        public int Population { get; set; }
        public int LandKM2 { get; set; }

        // Navigations (To imply a junction table)
        public List<Continent> Continents { get; } = [];
    }
}
