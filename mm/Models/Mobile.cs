using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_1_MobileManagement.Models
{
    public class Mobile
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ManufacturedBy { get; set; }
        public double Price { get; set; }

    }
}