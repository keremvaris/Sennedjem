using Core.Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace SennedjemTests.Helpers
{
    public static class DataHelper
    {
        public static User GetUser(string name) 
        {
            return new User()
            {
                UserId = 1,
                Address = "test",
                BirthDate = new DateTime(1988, 01, 01),
                CitizenId = 123456789101,
                Email = "test@test.com",
                FullName = string.Format("{0} {1} {2}", name, name, name),
                Gender = 1,
                MobilePhones = "123456789",
                Notes = "test",
                RecordDate = DateTime.Now,
                PasswordHash = new List<byte>().ToArray(),
                PasswordSalt = new List<byte>().ToArray(),
                Status = true,
                AuthenticationProviderType = "User",
                UpdateContactDate = DateTime.Now

            };


        }

        public static List<User> GetUserList()
        {
            var list = new List<User>();

            for (int i = 1; i <= 5; i++)
            {
                var user = new User()
                {
                    UserId = i,
                    Address = "test" + i,
                    BirthDate = new DateTime(1988, 01, 01),
                    CitizenId = 123456789101,
                    Email = "test@test.com",
                    FullName = string.Format("name {0} name {1} name {2}", i, i, i),
                    Gender = 1,
                    MobilePhones = "123456789",
                    Notes = "test",
                    RecordDate = DateTime.Now,
                    PasswordHash = new List<byte>().ToArray(),
                    PasswordSalt = new List<byte>().ToArray(),
                    Status = true,
                    AuthenticationProviderType = "User",
                    UpdateContactDate = DateTime.Now

                };
                list.Add(user);
            }

            return list;


        }
    }
}
