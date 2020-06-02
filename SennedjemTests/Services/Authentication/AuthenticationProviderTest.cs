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
using Nest;
using System.Linq.Expressions;

namespace SennedjemTests.Services.Authentication
{
    [TestFixture]
    public class AuthenticationProviderTest
    {
        Mock<IUserRepository> _userRepository;
        Mock<IMobileLoginRepository> _mobileLoginRepository;
        Mock<ITokenHelper> _tokenHelper;
        Mock<ISmsService> _smsService;
        Mock<IEntityRepository<User>> _entityRepository;
        Mock<IAuthenticationProvider> provider;

        [SetUp]
        public void Setup()
        {
            _userRepository = new Mock<IUserRepository>() { CallBase = true };
            _mobileLoginRepository = new Mock<IMobileLoginRepository>();
            _tokenHelper = new Mock<ITokenHelper>();
            _smsService = new Mock<ISmsService>();
            _entityRepository = new Mock<IEntityRepository<User>>();
            provider = new Mock<IAuthenticationProvider>();
        }

        [Test]
        public async Task CreateTokenAsync()
        {
            var user = DataHelper.GetUser("test");

            _userRepository.
                Setup(x => x.GetAsync(It.IsAny<Expression<Func<User, bool>>>())).Returns(() => Task.FromResult(user));

            _userRepository.Setup(x => x.GetClaims(It.IsAny<int>()))
                .Returns(new List<OperationClaim>() { new OperationClaim() { Id = 1, Name = "test" } });

            _tokenHelper.
                Setup(x => x.CreateToken<SFwToken>(It.IsAny<User>(), It.IsAny<List<OperationClaim>>())).
                Returns(() => new SFwToken()
                {
                    Expiration = DateTime.Now.AddMinutes(10),
                    ExternalUserId = "1111111",
                    OnBehalfOf = "true",
                    Provider = AuthenticationProviderType.Person,
                    Token = "User Token"
                });

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



            var result = await service.CreateToken(command);

            Assert.That(result.Token, Is.EqualTo("User Token"));
        }
        [Test]
        public async Task Person_Authentication_Login()
        {
            var user = DataHelper.GetUser("test");
            _userRepository.
                           Setup(x => x.GetAsync(It.IsAny<Expression<Func<User, bool>>>())).Returns(() => Task.FromResult(user));

            _userRepository.Setup(x => x.GetClaims(It.IsAny<int>()))
                .Returns(new List<OperationClaim>() { new OperationClaim() { Id = 1, Name = "test" } });

            _tokenHelper.
                Setup(x => x.CreateToken<SFwToken>(It.IsAny<User>(), It.IsAny<List<OperationClaim>>())).
                Returns(() => new SFwToken()
                {
                    Expiration = DateTime.Now.AddMinutes(10),
                    ExternalUserId = "1111111",
                    OnBehalfOf = "true",
                    Provider = AuthenticationProviderType.Person,
                    Token = "User Token"
                });

            var service = new PersonAuthenticationProvider(
                AuthenticationProviderType.Person,
                _userRepository.Object,
                _mobileLoginRepository.Object,
                _tokenHelper.Object,
                _smsService.Object);

            var command = new LoginUserCommand()
            {
                ExternalUserId = "40363726056",
                Provider = AuthenticationProviderType.Person,
                MobilePhone = user.MobilePhones,
                Password = "123456"
            };
            var result = await service.Login(command);
            Assert.That(result.Status, Is.EqualTo(LoginUserResult.LoginStatus.PhoneNumberRequired));
        }
    }
}
