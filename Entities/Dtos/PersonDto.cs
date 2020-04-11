using Core.Entities;

namespace Entities.Dtos
{
    public class PersonDto : IDto
    {
        public long TCKimlikNo { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public int DogumYili { get; set; }
    }
}
