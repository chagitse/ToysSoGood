using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using WebServiceAshrai.App_Code;

namespace WebServiceAshrai
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        UserService us = new UserService();
        [WebMethod]
        public bool isExist(string num,string id)
        {
            int x = us.CheckPasswordAndUsername(num,id);
            if(x==0)
                return false;
            return true;
        }
    }
}
