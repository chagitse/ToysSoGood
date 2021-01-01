using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood
{
    public partial class ShowProducts : System.Web.UI.Page
    {



        ProductsServices prod = new ProductsServices();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MovieRepeater.DataSource = prod.GetprodNames();
                MovieRepeater.DataBind();
            }
        }

        protected void OrderLink_Click(object sender, EventArgs e)
        {
            //מקבל את שם הסרט שנבחר ושולח את הערך לדף תצוגת הסרט
            string name = (string)(sender as LinkButton).CommandArgument;
            Response.Redirect(string.Format("ShowMovie.aspx?value={0}", name));
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //מקבל את שם המוצר שנבחר ושולח את הערך לדף תצוגת המוצר
            string name = (string)(sender as ImageButton).CommandName;
            Response.Redirect(string.Format("Admin/ViewProduct.aspx?value={0}", name));
        }
    }
}