using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToysSoGood
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsClientScriptBlockRegistered("Openpopup"))
            {
                string script = "<script language='javascript'>";
                script += "window.open('','',width=500,height=500')</script>";
                Page.RegisterStartupScript("Openpopup", script);
            }

        }
    }
}