
using Business.Handlers.Authorizations.Commands;
using Business.Services.Authentication;
using Core.DataAccess;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using Core.Utilities.Security.Hashing;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.EntityFramework.Contexts;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Moq;
using NUnit.Framework;
using SennedjemTests.Helpers;
using ServiceStack;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using static Business.Handlers.Authorizations.Commands.LoginUserQuery;


namespace SennedjemTests.Bussiness.HandlersTest
{
    [TestFixture]
    public class AuthorizationsTests
    {
        Mock<IUserRepository> _userRepository;
        Mock<ITokenHelper> _tokenHelper;

        LoginUserQueryHandler loginUserQueryHandler;
        LoginUserQuery loginUserQuery;
        Mock<IEntityRepository<User>> entityRepository;


        [SetUp]
        public void Setup()
        {
            _userRepository = new Mock<IUserRepository>();
            _tokenHelper = new Mock<ITokenHelper>();
            loginUserQueryHandler = new LoginUserQueryHandler(_userRepository.Object, _tokenHelper.Object);
        }
        [Test]
        public void Handler_Login()
        {
            var user = DataHelper.GetUser("test");

            _userRepository.Setup(x => x.GetAsync(a => a.Email == user.Email))
                  .Returns(Task.FromResult(new User()
                  {
                      Email = user.Email,
                      UpdateContactDate = user.UpdateContactDate,
                      Status = user.Status,
                      RecordDate = user.RecordDate,
                      Address = user.Address,
                      AuthenticationProviderType = user.AuthenticationProviderType,
                      BirthDate = user.BirthDate,
                      CitizenId = user.CitizenId,
                      FullName = user.FullName,
                      Gender = user.Gender,
                      MobilePhones = user.MobilePhones,
                      Notes = user.Notes,
                      PasswordHash = user.PasswordHash,
                      PasswordSalt = user.PasswordSalt,
                      UserId = user.UserId
                  }));

            loginUserQuery = new LoginUserQuery
            {
                Email = user.Email,
                Password = "123456"
            };

            var result = loginUserQueryHandler.Handle(loginUserQuery, new System.Threading.CancellationToken()).Result;

            Assert.That(result.Success, Is.True);

        }
    }
}
