using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ToysSoGood.App_Code
{
    public class OrdersService:BaseServise
    {
        


        //הוספה של הזמנת לקוח
        public void AddOrder(int show, int userID, int movieID, string userName, int ticketNum, decimal price, string date, string creditNum, string creditType, string creditExp)
        {
            string sql = string.Format("INSERT INTO orders (ShowID,UserID,MovieID,UserName,TicketNumber,Price,OrderDate,CreditNumber,CreditType,CreditExpire) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')", show, userID, movieID, userName, ticketNum, price, date, creditNum, creditType, creditExp);
            dal.excuteQuery(sql);
        }
        //מחזיר את שלושת מספרי הסרטים עם ההזמנות הרבות ביותר
        public DataSet GetOrders()
        {
            string sql = "SELECT products.ProductName, products.ID, products.ProductImage, COUNT(Orders.orderID) AS mycount, Orders.isSelcted  FROM products INNER JOIN orders ON products.ID=orders.ProductID GROUP BY products.productName,products.ID, products.ProductImage, Orders.isSelcted  order by COUNT(Orders.orderID) desc";
            // string sql = " select top 3 count(ProductID) as 'myCount',ProductName from orders , products where orders.ProductID=products.ID group by ProductName order by myCount desc";
            DataSet ds=dal.excuteQuery(sql);
            return ds;
          /*  int x = ds.Tables.Count;
            string[] arr = new string[ds.Tables[0].Rows.Count];
            for (int i=0;i< ds.Tables[0].Rows.Count; i++)
            {
                arr[i] = ds.Tables[0].Rows[i][0].ToString();
                string name= ds.Tables[0].Rows[i][1].ToString();
            }
            return arr;*/
          /*  while (reader.Read())
            {

                myList.Add((int)reader["MovieID"]);
            }
            dal.Close();
            reader.Close();
            return myList;*/

        }

        public DataTable GetOrderByName()
        {
            string sql = string.Format("SELECT * FROM orders");// WHERE UserName Like '{0}'", nameToSearch);
            return dal.GetDataTable(sql);
        }

        public DataTable UpdateOrder(string id, int x)
        {
            string sql = "UPDATE Orders SET price ="+x+"  WHERE productID="+id;// WHERE UserName Like '{0}'", nameToSearch);
            return dal.GetDataTable(sql);
        }
    }
}