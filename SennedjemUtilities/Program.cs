using System.Threading.Tasks;
using System.Text.Json;
using System.Threading;

namespace SennedjemUtilities
{
    partial class Program
    {
        static async Task Main(string[] args)
        {

            //Consumer.GetQueue();
            var phone = "05303332211";
            string output = JsonSerializer.Serialize(phone);
            await SendAsist("Deneme", "[" + output + "]");
        }

        public static async Task<bool> SendAsist(string text, string cellPhone)
        {
            Thread.Sleep(2000);
            return await Task.FromResult(true);
        }
    }
}
