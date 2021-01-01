using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebServiceAshrai.App_Code
{
    public class UserService
    {
        DAL dal = new DAL();
        public int CheckPasswordAndUsername(string num, string id)
        {
            DataSet dataset = new DataSet();
            try
            {

                string sSql = "select * from Users where CardNum='" + num + "' and id='" + id + "' ";
                DataSet ds = dal.excuteQuery(sSql);
                return ds.Tables[0].Rows.Count;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}