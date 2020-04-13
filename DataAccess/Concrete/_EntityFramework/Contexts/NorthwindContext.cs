using Core.Entities.Concrete;
using DataAccess.Concrete.Configurations;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;

namespace DataAccess.Concrete.EntityFramework.Contexts
{
  /// <summary>
  /// Bu sýnýf DbContext Sýnýfýdýr. tüm concrete DB nesneleri buradan register edilir.
  /// Code first, DB first yaklaþýmýný buradan yönetebilirsiniz.
  /// </summary>
  public class NorthwindContext : DbContext
  {
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
      //modelBuilder.ApplyConfiguration(new UserEntityConfiguration());
      modelBuilder.ApplyConfiguration(new GroupEntityConfiguration());
      modelBuilder.ApplyConfiguration(new UserGroupEntityConfiguration());
      modelBuilder.ApplyConfiguration(new UserClaimEntityConfiguration());
      modelBuilder.ApplyConfiguration(new GroupClaimEntityConfiguration());
      modelBuilder.ApplyConfiguration(new UserGroupEntityConfiguration());
    }
    /// <summary>
    /// Database sunucusuna baðlantý cümlesinin ayarlanmasý iþi bu metod içinde yapýlýr.
    /// </summary>
    /// <param name="optionsBuilder"></param>
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {

      if (!optionsBuilder.IsConfigured)
      {
        optionsBuilder.UseSqlServer(@"Server=NEPTUN\DVLP2008;Database=Northwind;Trusted_Connection=true");
      }
    }

    public DbSet<OperationClaim> OperationClaims { get; set; }
    public DbSet<UserClaim> UserClaims { get; set; }
    public DbSet<Group> Groups { get; set; }
    public DbSet<UserGroup> UserGroups { get; set; }
    public DbSet<User> Users { get; set; }
    public DbSet<GroupClaim> GroupClaims { get; set; }
    public DbSet<Log> Logs { get; set; }
    public DbSet<KanEkip> KanEkips { get; set; }


  }
}