using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ToysSoGood.App_Code
{
    public class EventService : BaseServise
    {
        public DataSet GetOrders()
        {
            string sql = "SELECT * FROM DateEvents";
            DataSet ds = dal.excuteQuery(sql);
            return ds;
        }
    }
}