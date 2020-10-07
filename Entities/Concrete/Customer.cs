using Core.DataAccess.MongoDb.Abstract;
using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public class Customer : MongoBaseEntity
    {
        public string Username { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public DateTime Birthdate { get; set; }
        public string Email { get; set; }
        public bool Active { get; set; }
        public List<int> Accounts { get; set; }
        public string[] Tier_and_details { get; set; }
        public DateTime RecordDate { get; set; }
    }
}
