using Core.Entities;
using Core.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
    public class Bagisci : User, IEntity
    {
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
    }
}
