using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood.Admin
{
    public partial class CountOrders : System.Web.UI.Page
    {
        OrdersService sorders = new OrdersService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PopulateGrid();

            }

            /* if (Session["Admin"] == null)
                 Response.Redirect("AdminLogin.aspx");*/
        }

      
       

        private void PopulateGrid()
        {
            GridView1.DataSource = sorders.GetOrders();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserServise us = new UserServise();
           
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[4].FindControl("CheckBox1") as CheckBox);
                    if (chkRow.Checked)
                    {
                        string storid = row.Cells[1].Text;
                        int storname = Int32.Parse(row.Cells[2].Text);
                        string state = row.Cells[3].Text;
                        //data = data + storid + " ,  " + storname + " , " + state + "<br>";
                        us.setType(storname);
                    }
                }
            }
            PopulateGrid();
            // lblmsg.Text = data;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            Response.Redirect("ViewProduct.aspx?prodId=" + row.Cells[4].Text);

        }
    }

}