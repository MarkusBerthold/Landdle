namespace Landdle.Models
{
    public class Continent
    {
        public int Id { get; set; }
        public required string Name { get; set; }

        // Navigations (To imply a junction table)
        public List<Country> Countries { get; } = [];
    }
}
