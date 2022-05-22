using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class CountryController : ControllerBase
    {
        private readonly cricketContext _Cricketcontext;
        public CountryController(cricketContext context)
        {
            _Cricketcontext = context;
        }
        // GET api/values
        [HttpGet]
        public IActionResult Get()
        {

            return Ok(_Cricketcontext.Country.ToList());
        }

        // GET: api/Country/5
       /* [HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            return "value"; 
 
        }   */

        // POST: api/Country
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Country/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
