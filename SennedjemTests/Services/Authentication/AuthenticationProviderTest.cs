using Business.Adapters.SmsService;
using Business.Services.Authentication;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using DataAccess.Entities;
using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Text;
using Core.Entities.Concrete;
using SennedjemTests.Helpers;
using System.Threading.Tasks;
using Core.DataAccess;

namespace SennedjemTests.Services.Authentication
{
    [TestFixture]
    public class AuthenticationProviderTest
    {
        Mock<IUserRepository> _userRepository;
        Mock<IMobileLoginRepository> _mobileLoginRepository;
        Mock<ITokenHelper> _tokenHelper;
        Mock<ISmsService> _smsService;
        Mock<IEntityRepository<User>> entityRepository;

        [SetUp]
        public void Setup()
        {
            _userRepository = new Mock<IUserRepository>();
            _mobileLoginRepository = new Mock<IMobileLoginRepository>();
            _tokenHelper = new Mock<ITokenHelper>();
            _smsService = new Mock<ISmsService>();
            entityRepository = new Mock<IEntityRepository<User>>();
        }

        [Test]
        public async Task CreateTokenAsync()
        {
            var user = DataHelper.GetUser("test");
            user.CitizenId = 1111111;

            _userRepository.Setup(x => x.GetAsync(a => a.CitizenId == 111111))
                .Returns(Task.FromResult(new User() { CitizenId= 1111111 }));


            var service = new PersonAuthenticationProvider(
                AuthenticationProviderType.Person,
                _userRepository.Object,
                _mobileLoginRepository.Object,
                _tokenHelper.Object,
                _smsService.Object);


            var command = new VerifyOtpCommand()
            {
                Code = 1,
                ExternalUserId = "111111",
                Provider = AuthenticationProviderType.Person,
                ProviderSubType = "Person"
            };

            var result = await service.CreateToken(command);

            _userRepository.Verify();


        }

        [Test]
        public void CreateToken()
        {
            var user = DataHelper.GetUser("test");
            user.CitizenId = 1111111;

            _userRepository.Setup(x => x.Get(a => a.CitizenId == 111))
                .Returns(user);


            var service = new PersonAuthenticationProvider(
                AuthenticationProviderType.Person,
                _userRepository.Object,
                _mobileLoginRepository.Object,
                _tokenHelper.Object,
                _smsService.Object);


            var command = new VerifyOtpCommand()
            {
                Code = 1,
                ExternalUserId = "111",
                Provider = AuthenticationProviderType.Person,
                ProviderSubType = "Person"
            };

            var result =  service.CreateTokenSnc(command);


        }
    }
}
