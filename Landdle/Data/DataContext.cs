using Landdle.Models;
using Microsoft.EntityFrameworkCore;

namespace Landdle.Data
{
    public class DataContext : DbContext
    {

        public DataContext()
        {
            
        }
        public DataContext(DbContextOptions<DbContext> options) : base(options)
        {

        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseSqlServer("Server=.\\SQLEXPRESS;Database=Landdle;Trusted_Connection=true;TrustServerCertificate=true;");
        }

        public DbSet<Country> Country { get; set; }
        public DbSet<Continent> Continent { get; set; }
        public DbSet<CountryContinent> CountryContinent { get; set; }
    }
}
