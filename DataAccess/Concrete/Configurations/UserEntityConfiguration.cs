using Core.Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace DataAccess.Concrete.Configurations
{
  public class UserEntityConfiguration : IEntityTypeConfiguration<User>
  {
    public void Configure(EntityTypeBuilder<User> builder)
    {
      builder.HasKey(x => x.UserId);
      builder.Property(x => x.FirstName).HasMaxLength(50).IsRequired();
      builder.Property(x => x.LastName).HasMaxLength(50).IsRequired();
      builder.Property(x => x.Email).HasMaxLength(50).IsRequired();
      builder.Property(x => x.Status).IsRequired();
      builder.Property(x => x.PasswordHash).IsRequired();
      builder.Property(x => x.PasswordSalt).IsRequired();   

    }
  }
}
