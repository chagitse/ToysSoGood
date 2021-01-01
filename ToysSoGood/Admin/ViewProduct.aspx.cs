using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood.Admin
{
    public partial class ViewProduct : System.Web.UI.Page
    {
        ProductsServices ps = new ProductsServices();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable ds = ps.GetprodNames();
            GridView1.DataSource = ds;
            GridView1.DataBind();




            /*string str;
            if (!string.IsNullOrEmpty(Request.QueryString["prodId"]))
            {
                 str = Request.QueryString["prodId"];
            }
            else
            {
                str = "NO DATA PROVIDED OR COULD NOT BE READ";
            }*/

        }
    }
}