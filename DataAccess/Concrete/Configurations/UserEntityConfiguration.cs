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
      builder.Property(x => x.SporKulubuId);
      builder.Property(x => x.HaberlesmeTercihiId);
      builder.Property(x => x.MeslekId);
      builder.Property(x => x.EgitimId);
      builder.Property(x => x.NufusKayitIl);
      builder.Property(x => x.TCKimlikNo);
      builder.Property(x => x.AnneAdi);
      builder.Property(x => x.BabaAdi);
      builder.Property(x => x.DogumTarihi);
      builder.Property(x => x.DogumYeri);
      builder.Property(x => x.Cinsiyet);
      builder.Property(x => x.KayitTarihi);
      builder.Property(x => x.Adres);
      builder.Property(x => x.CepTelefonu);
      builder.Property(x => x.EvTelefonu);
      builder.Property(x => x.IsTelefonu);
      builder.Property(x => x.Notlar);

    }
  }
}
