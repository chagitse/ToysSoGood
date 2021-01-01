using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToysSoGood
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSearch1_Click(object sender, ImageClickEventArgs e)
        {
            //url שולח את הערך לחיפוש  בשורת 

            string url = string.Format("searchPage.aspx?value={0}", Request["serchText"]);
            Response.Redirect(url);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //url שולח את הערך לחיפוש  בשורת 

            string url = string.Format("searchPage.aspx?value={0}", Request["serchText"]);
            Response.Redirect(url);
        }
    }
}