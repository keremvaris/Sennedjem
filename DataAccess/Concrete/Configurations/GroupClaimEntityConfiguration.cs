using Core.Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace DataAccess.Concrete.Configurations
{
  public class GroupClaimEntityConfiguration : IEntityTypeConfiguration<GroupClaim>
  {
    public void Configure(EntityTypeBuilder<GroupClaim> builder)
    {
      builder.HasKey(x => x.Id);
    }
  }
}
