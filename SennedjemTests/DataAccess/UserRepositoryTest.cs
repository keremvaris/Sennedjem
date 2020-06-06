using Core.Entities.Concrete;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.EntityFramework.Contexts;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Moq;
using NUnit.Framework;
using SennedjemTests.Helpers;
using System;
using System.Linq;

namespace SennedjemTests.DataAccess
{
    [TestFixture]
    public class UserRepositoryTest
    {

        Mock<IConfiguration> configuration;
        DbContextOptions<ProjectDbContext> _dbContextOptionsBuilder;

        [SetUp]
        public void Setup()
        {

            configuration = new Mock<IConfiguration>();
            _dbContextOptionsBuilder = new DbContextOptionsBuilder<ProjectDbContext>().
                UseInMemoryDatabase(databaseName: Guid.NewGuid().ToString())
                     .Options;

        }

        //[Test]
        public void Add()
        {
            var mockSet = new Mock<DbSet<User>>();
            var mocContext = new Mock<ProjectDbContext>();
            mocContext.Setup(m => m.Users).Returns(mockSet.Object);

            mockSet.Verify(m => m.Add(It.IsAny<User>()), Times.Never());
            mocContext.Verify(m => m.SaveChanges(), Times.Never());

        }

        [Test]
        public void AddUser()
        {
            var user = DataHelper.GetUser("test");

            using (var contextDb = new ProjectDbContext(_dbContextOptionsBuilder, configuration.Object))
            {
                var repository = new UserRepository(contextDb);

                var result = repository.Add(user);
                Assert.NotNull(result);
                Assert.That(result.Status, Is.True);
            }
        }

        [Test]
        public void GetUsers()
        {
            using (var contextdb = new ProjectDbContext(_dbContextOptionsBuilder, configuration.Object))
            {
                var userlist = DataHelper.GetUserList();

                foreach (var user in userlist)
                    contextdb.Users.Add(user);

                contextdb.SaveChanges();
            }

            using (var contextdb = new ProjectDbContext(_dbContextOptionsBuilder, configuration.Object))
            {
                var userRepository = new UserRepository(contextdb);
                var userList = userRepository.GetList();
                Assert.That(userList.Count(), Is.GreaterThan(0));
            }
        }
    }
}
