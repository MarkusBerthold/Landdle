namespace Landdle.Models
{
    public class CountryInformation
    {
        public required string Country { get; set; }
        public required bool CorrectAnswer { get; set; }
        public required int Population { get; set; }
        public required int LandKM2 { get; set; }
        public required string Continent { get; set; }
    }
}
