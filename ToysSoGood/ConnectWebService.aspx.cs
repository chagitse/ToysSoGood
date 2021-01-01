using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.localhost;

namespace ToysSoGood
{
    public partial class ConnectWebService : System.Web.UI.Page
    {
        WebService1 ws = new WebService1();
        protected void Page_Load(object sender, EventArgs e)
        {
            bool flag=ws.isExist("452125632", "025896541");
        }
    }
}