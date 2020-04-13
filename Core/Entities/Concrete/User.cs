using System;

namespace Core.Entities.Concrete
{
  public class User : IEntity
  {
    public int UserId { get; set; }
    public int? HemActId { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public byte[] PasswordSalt { get; set; }
    public byte[] PasswordHash { get; set; }
    public bool Status { get; set; }
    public int SporKulubuId { get; set; }
    public int HaberlesmeTercihiId { get; set; }
    public int MeslekId { get; set; }
    public int EgitimId { get; set; }
    public int NufusKayitIl { get; set; }
    public long TCKimlikNo { get; set; }
    public string AnneAdi { get; set; }
    public string BabaAdi { get; set; }
    public DateTime DogumTarihi { get; set; }
    public string DogumYeri { get; set; }
    public int Cinsiyet { get; set; }
    public DateTime KayitTarihi { get; set; }
    public string Adres { get; set; }
    public string CepTelefonu { get; set; }
    public string EvTelefonu { get; set; }
    public string IsTelefonu { get; set; }
    public string Notlar { get; set; }
    public DateTime? UpdateContactDate { get; set; }

  }
}
