using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DataAccess.Concrete.MongoDb;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nest;

namespace WebAPI.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]

    public class CustomerController : ControllerBase
    {
        /// <summary>
        /// 
        /// </summary>
        /// 
        ICustomerMongo _customerMongo;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="customerMongo"></param>
        public CustomerController(ICustomerMongo customerMongo)
        {
            _customerMongo = customerMongo;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>

        [HttpGet("GetAll")]
        public IActionResult Get()
        {
            var data = _customerMongo.LoadRecords();
            return Ok(data);
        }
    }
}
