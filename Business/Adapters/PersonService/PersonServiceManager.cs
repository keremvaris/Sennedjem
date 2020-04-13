using Microsoft.Extensions.Configuration;
using System.Globalization;
using System.Threading.Tasks;
using wsKPSPublic;

namespace Business.Adapters.PersonService
{
    public class PersonServiceManager : IPersonService
    {
        private readonly IConfiguration _configuration;

        public PersonServiceManager(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public async Task<bool> VerifyCid(long TCKimlikNo, string Ad, string Soyad, int DogumYili)
        {
            KPSPublicSoapClient svc = new KPSPublicSoapClient(KPSPublicSoapClient.EndpointConfiguration.KPSPublicSoap);
            {
                //bu pahalı bir işlem olduğu için statik olarak yaratıyoruz.
                var locale = new CultureInfo("tr-TR", false);
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
