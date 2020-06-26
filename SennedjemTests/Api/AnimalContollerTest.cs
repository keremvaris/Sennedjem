using NUnit.Framework;
using SennedjemTests.Helpers;
using SennedjemTests.Helpers.TokenHelpers;
using System;
using System.Collections.Generic;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace SennedjemTests.Api
{
    [TestFixture]
    public class AnimalContollerTest: BaseIntegrationTest
    {
        [Test]
        public async Task GetAll()
        {
            var token = MockJwtTokens.GenerateJwtToken(ClaimsData.GetClaims());
            _client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

            var response = await _client.GetAsync("api/animals/getall");

        }
    }
}
