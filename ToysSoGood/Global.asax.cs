using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ToysSoGood
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(Object sender, EventArgs e)
        {//מופעל בזמן העלאת האתר לשרת
            Application["appCtr"] = 0;
            Application["noOfUsers"] = 0;
        }


        protected void Session_Start(Object sender, EventArgs e)
        {// Session מופעלת בכל התחלת 
            Application.Lock();
            Application["noOfUsers"] = (int)Application["noOfUsers"] + 1;
            Session["user"] = "אורח";
            Session["admin"] = "no";
            Application.UnLock();
        }

        protected void Session_End(object sender, EventArgs e)
        { //המופעלת בכל סיום Session  
            Session["user"] = "אורח";
            Session["admin"] = "no";
        }
    }
}