
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Web;
using WebApplication3.Models;

namespace HW3_MVC.Context
{
    public class ProductContext : DbContext
    {
        public ProductContext()
        {
            Database.Log = s => Debug.WriteLine(s);
        }

        public DbSet<Product> Products { get; set; }
    }
}