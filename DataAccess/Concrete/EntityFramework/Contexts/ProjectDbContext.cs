using Core.Entities.Concrete;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using DataAccess.Concrete.Configurations;

namespace DataAccess.Concrete.EntityFramework.Contexts
{

    public class ProjectDbContext : DbContext
    {
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new UserEntityConfiguration());
            modelBuilder.ApplyConfiguration(new GroupEntityConfiguration());
            modelBuilder.ApplyConfiguration(new UserGroupEntityConfiguration());
            modelBuilder.ApplyConfiguration(new UserClaimEntityConfiguration());
            modelBuilder.ApplyConfiguration(new GroupClaimEntityConfiguration());
            modelBuilder.ApplyConfiguration(new OperationClaimEntityConfiguration());

        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {

            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseNpgsql(@"Server=localhost;Port=5432;Database=Northwind;Username=postgres;Password=test;");
                //optionsBuilder.UseSqlServer(@"Server=NEPTUN\DVLP2008;Port=5432;Database=OAS;Username=sa;Password=test;");
            }
        }

        public DbSet<OperationClaim> OperationClaims { get; set; }
        public DbSet<UserClaim> UserClaims { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<UserGroup> UserGroups { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<GroupClaim> GroupClaims { get; set; }
        public DbSet<Log> Logs { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Animal> Animals { get; set; }
    }
}