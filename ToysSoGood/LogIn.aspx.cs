using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood
{
    public partial class LogIn : System.Web.UI.Page
    {
        UserServise us = new UserServise();
        protected void Page_Load(object sender, EventArgs e)
        {
            //popup window same as the script in the body
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "open", "window.open('PopUpWindow.aspx','','fullscreen=yes,width=800,height=500,top=100, left=100')", true);
               
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            DataSet ds = us.CheckPasswordAndUsername(Request.Form["username"], Request.Form["password"]);
            if (ds == null)
            {
                Error.Text = "username or password are wrong";
            }
            else
            {
                Session["user"] = Request.Form["username"];
                Response.Redirect("Home.aspx");
            }
        }
    }
}