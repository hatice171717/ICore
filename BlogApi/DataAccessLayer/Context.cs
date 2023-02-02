using Microsoft.EntityFrameworkCore;

namespace BlogApi.DataAccessLayer
{
    public class Context : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=302-03;Database=MvcCore_ProKamp150_Api;User Id=WebMobile_302;Password=WebMobile_302;");
            //optionsBuilder.UseSqlServer("Server=DESKTOP-FT6FLSV\\SQLEXPRESS;Database=MvcCore_ProKamp150;integrated security=true;");
        }
        public DbSet<Employee> Employees { get; set; }

    }
}
