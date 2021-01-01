using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ToysSoGood.App_Code
{
    public class ProductsServices
    {

        Connect dal = new Connect();
        public DataTable GetprodNames()
        {
            string sql = "SELECT ID,ProductImage as Img,ProductDesc FROM Products";
            return dal.GetDataTable(sql);
        }
        public DataSet GetAllProdacts()
        {
            string sql = "SELECT * FROM Products";
            return dal.excuteQuery(sql);
        }

        //מחזיר טבלת מוצרים לפי מילת חיפוש
        public DataTable GetMoviesWithSearch(string str)
        {
            string sql = string.Format("SELECT * FROM Products WHERE ProductName LIKE '%{0}%'", str);
            return dal.GetDataTable(sql);
        }

        public DataSet getProduct()
        {
            string sql = "SELECT ProductName,ID FROM Products";
            return dal.excuteQuery(sql);
        }

        public List<Products> GetMovieIDForPopuar()
        {
            List<Products> myList = new List<Products>();
            string sql = " SELECT * FROM Products ";

            DataTable dt = dal.GetDataTable(sql);

            for (int i = 0; i < dt.Rows.Count; i++)
            {
               
                Products prod = new Products((string)dt.Rows[i]["ProductImage"], (string)dt.Rows[i]["ProductDesc"], double.Parse(dt.Rows[i]["ProductPrice"].ToString()), (string)dt.Rows[i]["ProductName"]);
                myList.Add(prod);
            }
            
            return myList;

           

        }

    }
}