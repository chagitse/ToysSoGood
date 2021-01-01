using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood.Admin
{
    public partial class EditProduct : System.Web.UI.Page
    {
        ProductsServices prod = new ProductsServices();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddl.DataSource = prod.getProduct();
                ddl.DataBind();

                ddl.DataTextField = "ProductName";
                ddl.DataValueField = "ID";

                ddl.DataBind();
                ddl.Items.Insert(0, "בחר");
            }
        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int x = Int32.Parse( ddl.SelectedValue);
            string str = ddl.SelectedItem.Text;

        }
    }
}