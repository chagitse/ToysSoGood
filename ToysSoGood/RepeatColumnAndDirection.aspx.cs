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
    public partial class RepeatColumnAndDirection : System.Web.UI.Page
    {
        ProductsServices prod = new ProductsServices();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.DataSource = prod.GetAllProdacts();
            DataList1.DataBind();
        }

        private static string temp = string.Empty;
        private void OnDataListBound(object sender, System.Web.UI.WebControls.DataListItemEventArgs e)
        {
            DataRowView drv = (DataRowView)e.Item.DataItem;
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                string mm = string.Format("{0:dd MMMM yyyy}", Convert.ToDateTime(drv.Row["OccupDateValue"].ToString()));
                string tt = mm.Substring(2, (mm.LastIndexOf(" ") - 2));
                if (temp != string.Empty)
                {
                    if (temp != tt)
                    {
                        DataListItem lItem = new DataListItem(e.Item.ItemIndex + 1, ListItemType.Item);
                        //LiteralControl newLine = new LiteralControl("<tr style='background-color:black'></tr>");
                        //DataList1.Controls.Add(newLine);
                        DataList1.Controls.Add(lItem);
                        temp = string.Empty;
                    }
                }
                if (temp == string.Empty)
                    temp = tt;
            }
        }
    }
}