namespace Landdle.Models
{
    public class Country
    {
        public int Id { get; set; }
        public required string Name { get; set; }

        // Navigations (To imply a junction table)
        public List<Continent> Continents { get; } = [];
    }
}
