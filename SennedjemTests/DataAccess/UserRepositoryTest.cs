using Core.Entities.Concrete;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.EntityFramework.Contexts;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Moq;
using NUnit.Framework;
using NUnit.Framework.Internal;
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
        public void UpdateUser()
        {
            var user = DataHelper.GetUser("test");

            using (var contextDb = new ProjectDbContext(_dbContextOptionsBuilder, configuration.Object))
            {
                var repository = new UserRepository(contextDb);
                user.Address = "Update Addresses";
                user.Email = "updateuser@test.com";
                var result = repository.Update(user);
                Assert.NotNull(result);
                Assert.That(result.Status, Is.True);
            }
        }

        [Test]
        public void DeleteUser()
        {
            var user = DataHelper.GetUser("test");

            using (var contextdb = new ProjectDbContext(_dbContextOptionsBuilder, configuration.Object))
            {


                contextdb.Users.Add(user);
                contextdb.SaveChanges();
            }
            using (var contextDb = new ProjectDbContext(_dbContextOptionsBuilder, configuration.Object))
            {
                var repository = new UserRepository(contextDb);

                repository.Delete(user);
                var result = contextDb.SaveChanges();
                Assert.That(result, Is.EqualTo(1));
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


        [Test]
        public void GetCount()
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
                var userCount = userRepository.GetCount();
                Assert.That(userCount, Is.EqualTo(5));
            }
        }

        [Test]
        public void GetCountWithExpression()
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
                var userCount = userRepository.GetCount(x=>x.UserId>3);
                Assert.That(userCount, Is.EqualTo(2));
            }
        }
    }
}
