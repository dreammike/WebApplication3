using hw3.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Swashbuckle.AspNetCore.SwaggerGen;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace hw3.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CrudController : ControllerBase
    {
        readonly BokaiContext _context;

        public CrudController(BokaiContext context)
        {
            _context = context;
        }


        // GET: api/<CrudController>
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Customer>>> Get()
        {
            return await _context.Customers.ToListAsync();
        }

        // GET api/<CrudController>/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Customer>> Get(string id)
        {
            Customer? customer = await _context.Customers.FindAsync(id);
            if (customer == null) return NotFound();

            return customer;
        }

        // POST api/<CrudController>
        [HttpPost]
        public async Task<IActionResult> Post([FromForm] Customer customer)
        {
            _context.Customers.Add(customer);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(Get),
                new { id = customer.CustomerId }, customer);


        }

        // PUT api/<CrudController>/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(string id, [FromForm] Customer customer)
        {
            if (id != customer.CustomerId) return BadRequest();
            //部分更新單一更動屬性
            //var item = await _context.Operas.FindAsync(id);
            //if(item == null) return NotFound();
            //item.Title = "xxxx";

            //變更所有屬性
            _context.Update(customer);
            await _context.SaveChangesAsync();
            return NoContent();

        }

        // DELETE api/<CrudController>/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(string id)
        {
            var customer = await _context.Customers.FindAsync(id);
            if (customer == null) return NotFound();
            _context.Remove(customer);
            await _context.SaveChangesAsync();
            return NoContent();

        }
    }
}