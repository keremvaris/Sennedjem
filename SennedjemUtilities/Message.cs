using System.Xml.Serialization;

namespace SennedjemUtilities
{
    public partial class Program
    {
        [XmlRoot("RESULT_STATUS")]
        public class Message
        {
            [XmlElement("CODE")]
            public string Code { get; set; }
        }


    }
}
