using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood.Admin
{
    public partial class ShowOrders : System.Web.UI.Page
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //sorders.UpdateOrder(GridView1.SelectedRow.Cells[3].Text);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            PopulateGrid();
            //int x = e.NewEditIndex;
           // sorders.UpdateOrder(GridView1.Rows[x].Cells[2].Text);
        }

        private void PopulateGrid()
        {
            GridView1.DataSource = sorders.GetOrderByName();
            GridView1.DataBind();
        }

       

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {//כשיש אפשרות עריכה בעצם נוספת תיבת טקס וממנה צריך לקחת את הנתון
            string price = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[1].Controls[0])).Text;
            //עדכון הנתונים במסד הנתונים
            sorders.UpdateOrder(GridView1.Rows[e.RowIndex].Cells[2].Text, Int32.Parse(price));
            //יציאה ממצב עריכה
            GridView1.EditIndex = -1;
            PopulateGrid();
        }
    }
}