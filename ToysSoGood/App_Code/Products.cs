using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToysSoGood.App_Code
{
    public class Products
    {
        string pic;
        string des;
        double price;
        string name;

        public Products(string pic, string des, double price, string name)
        {
            this.pic = pic;
            this.des = des;
            this.Price = price;
            this.name = name;
        }

        public double Price { get => price; set => price = value; }
        public string Des { get => des; set => des = value; }
        public string Pic { get => pic; set => pic = value; }
        public string Name { get => name; set => name = value; }
    }
}