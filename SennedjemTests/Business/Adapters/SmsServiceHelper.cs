using Business.Adapters.SmsService;
using System;
using System.Collections.Generic;
using System.Text;

namespace SennedjemTests.Business.Adapters
{
    public class SmsServiceHelper
    {
        ISmsService smsService;
        public SmsServiceHelper(ISmsService smsService)
        {
            this.smsService = smsService;
        }

        public bool Send(string password, string text, string cellPhone)
        {
            return smsService.Send(password, text, cellPhone).Result;
        }
        public bool SendAsist(string text, string cellPhone)
        {
            return smsService.SendAsist(text, cellPhone).Result;
        }
    }
}
