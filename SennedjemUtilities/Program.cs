using System;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using System.Xml.Linq;
using System.Text.Json.Serialization;
using System.Text.Json;
using System.Xml.Serialization;
using System.IO;
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
            var userCode = "3697";
            var userName = "kizilaykan.randevu";
            var password = "wDgfkB8F";
            var accountID = "1013";
            var originator = "KIZILAY";
            var apiKey = "abc9d759-f1a7-442c-a53f-32518df0e4d1";
            var validityPeriod = "3360";
            var isUtf8Allowed = "true";
            var title = "KIZILAY";

            var svc = new ServiceReference1.AsistanOWSSoapClient(ServiceReference1.AsistanOWSSoapClient.EndpointConfiguration.AsistanOWSSoap);


            var result = await svc.SendUnicodeSmsAsync(userName, password, userCode, apiKey, accountID,
                DateTime.Now.AddMinutes(1).ToString("yyyy-MM-dd HH:mm"), validityPeriod, isUtf8Allowed,
             originator, title, text, cellPhone, string.Empty);

            var xmlresult = result.ChildNodes[0].FirstChild.InnerXml;
            var xmldesc = result.ChildNodes[0].LastChild.InnerXml;
            if (xmlresult != "56")
                return false;

            return true;
        }
    }
}
