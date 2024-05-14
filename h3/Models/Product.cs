using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace hw3.Models
{
    public partial class Product
    {
        [Key]
        [Column("ProductID")]
        public int ProductId { get; set; }
        [StringLength(40)]
        public string ProductName { get; set; } = null!;
        [Column("CategoryID")]
        public int? CategoryId { get; set; }
        [Column(TypeName = "money")]
        public decimal? UnitPrice { get; set; }

        [ForeignKey("CategoryId")]
        [InverseProperty("Products")]
        public virtual Category? Category { get; set; }
    }
}