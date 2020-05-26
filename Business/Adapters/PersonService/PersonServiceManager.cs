using System.Globalization;
using System.Threading.Tasks;
using wsKPSPublic;

namespace Business.Adapters.PersonService
{
    public class PersonServiceManager : IPersonService
    {
        public async Task<bool> VerifyCid(long TCKimlikNo, string Ad, string Soyad, int DogumYili)
        {
            return await Verify(TCKimlikNo, Ad, Soyad, DogumYili);
        }

        private static async Task<bool> Verify(long TCKimlikNo, string Ad, string Soyad, int DogumYili)
        {
            var locale = new CultureInfo("tr-TR", false);
            var svc = new KPSPublicSoapClient(KPSPublicSoapClient.EndpointConfiguration.KPSPublicSoap);
            {
                var cmd = await svc.TCKimlikNoDogrulaAsync(
                  TCKimlikNo,
                  Ad.ToUpper(locale).ToString(),
                  Soyad.ToUpper(locale).ToString(),
                  DogumYili);
                return cmd.Body.TCKimlikNoDogrulaResult;
            }
        }
    }
}
