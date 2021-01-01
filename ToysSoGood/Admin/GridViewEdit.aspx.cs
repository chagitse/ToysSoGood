using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood.Admin
{
    public partial class GridViewEdit : System.Web.UI.Page
    {
        OrdersService sorders = new OrdersService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PopulateGrid();

            }
        }
        private void PopulateGrid()
        {
            GridView1.DataSource = sorders.GetOrderByName();
            GridView1.DataBind();
            
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
           // GridView1.EditIndex = e.NewEditIndex;
            
            ((BoundField)GridView1.Columns[1]).ReadOnly = true;
            PopulateGrid();
            //int x = e.NewEditIndex;
            // sorders.UpdateOrder(GridView1.Rows[x].Cells[2].Text);
        }

       
    }
}