
using Core.Entities.Concrete;
//using DataAccess.Concrete.EntityFramework.Configurations;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;


namespace DataAccess.Concrete.EntityFramework.Contexts
{
  /// <summary>
  /// Bu sınıf DbContext Sınıfıdır. tüm concrete DB nesneleri buradan register edilir.
  /// Code first, DB first yaklaşımını buradan yönetebilirsiniz.
  /// </summary>
  public class ProjectContext : DbContext
  {
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
      //modelBuilder.ApplyConfiguration(new UserEntityConfiguration());
      //modelBuilder.ApplyConfiguration(new GroupEntityConfiguration());
      //modelBuilder.ApplyConfiguration(new UserGroupEntityConfiguration());
      //modelBuilder.ApplyConfiguration(new UserClaimEntityConfiguration());
      //modelBuilder.ApplyConfiguration(new GroupClaimEntityConfiguration());
      //modelBuilder.ApplyConfiguration(new UserGroupEntityConfiguration());
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
      if (!optionsBuilder.IsConfigured)
      {
        optionsBuilder.UseSqlServer(@"Server=.;Database=DbName;Trusted_Connection=true");
      }
    }

    //Must DbSet Added
    public DbSet<OperationClaim> OperationClaims { get; set; }
    public DbSet<UserClaim> UserClaims { get; set; }
    public DbSet<Group> Groups { get; set; }
    public DbSet<UserGroup> UserGroups { get; set; }
    public DbSet<User> Users { get; set; }
    public DbSet<GroupClaim> GroupClaims { get; set; }
    public DbSet<Log> Logs { get; set; }

  }
}