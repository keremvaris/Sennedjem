using Core.Entities.Concrete;
using DataAccess.Entities;
using Microsoft.EntityFrameworkCore;
using DataAccess.Concrete.Configurations;
using Microsoft.Extensions.Configuration;

namespace DataAccess.Concrete.EntityFramework.Contexts
{
	/// <summary>
	/// Bu context birden fazla provider için migration takibi yapýldýðý için
	/// varsayýlan olarak Postg db'si üzerinden çalýþýr. Eðer sql geçmek isterseniz
	/// AddDbContext eklerken bundan türeyen MsDbContext'i kullanýnýz.
	/// </summary>
	public class ProjectDbContext : DbContext
	{
		protected readonly IConfiguration configuration;


		/// <summary>
		/// constructor da IConfiguration alýyoruz ki, birden fazla db ye parallel olarak
		/// migration yaratabiliyoruz.
		/// </summary>
		/// <param name="options"></param>
		/// <param name="configuration"></param>
		public ProjectDbContext(DbContextOptions<ProjectDbContext> options, IConfiguration configuration)
				: base(options)
		{
			this.configuration = configuration;
		}

		/// <summary>
		/// Genel versiyonu da implement edelim.
		/// </summary>
		/// <param name="options"></param>
		/// <param name="configuration"></param>
		protected ProjectDbContext(DbContextOptions options, IConfiguration configuration)
				: base(options)
		{
			this.configuration = configuration;
		}


		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			modelBuilder.ApplyConfiguration(new UserEntityConfiguration());
			modelBuilder.ApplyConfiguration(new GroupEntityConfiguration());
			modelBuilder.ApplyConfiguration(new UserGroupEntityConfiguration());
			modelBuilder.ApplyConfiguration(new UserClaimEntityConfiguration());
			modelBuilder.ApplyConfiguration(new GroupClaimEntityConfiguration());
			modelBuilder.ApplyConfiguration(new UserGroupEntityConfiguration());
		}
		protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
		{
			if (!optionsBuilder.IsConfigured)
			{
				base.OnConfiguring(optionsBuilder.UseNpgsql(configuration.GetConnectionString("SFwPgContext")));
			}
		}

		public virtual DbSet<OperationClaim> OperationClaims { get; set; }
		public virtual DbSet<UserClaim> UserClaims { get; set; }
		public virtual DbSet<Group> Groups { get; set; }
		public virtual DbSet<UserGroup> UserGroups { get; set; }
		public virtual DbSet<User> Users { get; set; }
		public virtual DbSet<GroupClaim> GroupClaims { get; set; }
		public virtual DbSet<Log> Logs { get; set; }
		public virtual DbSet<MobileLogin> MobileLogins { get; set; }

	}
}