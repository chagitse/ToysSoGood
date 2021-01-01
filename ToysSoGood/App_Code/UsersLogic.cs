using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ToysSoGood.App_Code
{
    public class UsersLogic
    {
        DAL dal = new DAL();

        public bool checkExistPassword(string pass)//לקבל את הסיסמא שהמשתמש הכניס ולבדוק האם קיים במסד הנתונים
        {
            string sql = string.Format("SELECT pass FROM users WHERE Password1='{0}'",pass);
            //string sql ="SELECT pass FROM users WHERE Password1='"+pass+"'";
            DataSet ds= dal.excuteQuery(sql);
            return ds.Tables[0].Rows.Count != 0;
        }

    }
}