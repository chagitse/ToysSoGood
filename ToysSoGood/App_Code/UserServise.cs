using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace ToysSoGood.App_Code
{
    public class UserServise : BaseServise
    {

        //מכניס משתמש שנרשם לאתר לטבלת המשתמשים
        public void InsertUser(Users u)
        {
            string firstName = u.getFirstName();
            string lastName = u.getlastName();
            string email = u.getemail();
            string userName = u.getuserName();
            string password = u.getpassword();
            try
            {
                string sSq1 = "INSERT INTO Users ( FirstName,LastName,Email,UserName1,pass) VALUES ('" + firstName + "', '" + lastName + "', '" + email + "','" + userName + "','" + password + "')";
                dal.excuteQuery(sSq1);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public int CheckUsername(string username)
        {
            try
            {
                string sSql = "select * from Users where UserName='" + username + "'";
                DataSet ds = dal.excuteQuery(sSql);
                return ds.Tables[0].Rows.Count;
            }
            catch (Exception e)
            {
                throw e;
            }

        }

        public DataSet CheckPasswordAndUsername(string password, string u)
        {
            //DataSet dataset = new DataSet();
            try
            {

                string sSql = "select * from Users where UserPass='" + password + "' and UserName1='" + u + "' ";
                DataSet ds = dal.excuteQuery(sSql);
                return ds;
                //return ds.Tables[0].Rows.Count;
            }
            catch (Exception e)
            {
                throw e;
            }
        }


        public DataSet GetUsersDataForTable()
        {
            DataSet dataset = new DataSet();
            try
            {

                string sSql = "select * " + " from Users,Cities  " + " where Users.UserCity = Cities.CityNum ";
                DataSet ds = dal.excuteQuery(sSql);
                return ds;

            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void setType(int id)
        {
            string sql = "UPDATE users SET Type = 'employee' WHERE userid=" + id;// WHERE UserName Like '{0}'", nameToSearch);
            dal.excuteQuery(sql);
        }
    }
}