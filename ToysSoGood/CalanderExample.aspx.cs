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
    public partial class CalanderExample : System.Web.UI.Page
    {

        EventService es = new EventService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DataSet ds = es.GetOrders();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                DateTime dateFromDB = Convert.ToDateTime(row["eventDate"]);
                if (e.Day.Date.Equals(dateFromDB))
                {
                    string url = e.SelectUrl;
                    //clear the current cells
                    e.Cell.Controls.Clear();
                    //build a new link
                    HyperLink link = new HyperLink();
                    link.Text = e.Day.Date.Day.ToString();
                    link.NavigateUrl = url;
                    //display details in tooltip
                    link.ToolTip = row["desc"].ToString();
                    //add the new link to cell
                    e.Cell.Controls.Add(link);
                }
            }
        }
    }
}