using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToysSoGood
{
    public partial class DataListExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Load sample data only once, when the page is first loaded.
            if (!IsPostBack)
            {
                ItemsList.DataSource = CreateDataSource();
                ItemsList.DataBind();
            }
        }

      public ICollection CreateDataSource()
        {

            // Create sample data for the DataList control.
            DataTable dt = new DataTable();
            DataRow dr;

            // Define the columns of the table.
            dt.Columns.Add(new DataColumn("IntegerValue", typeof(Int32)));
            dt.Columns.Add(new DataColumn("StringValue", typeof(String)));
            dt.Columns.Add(new DataColumn("CurrencyValue", typeof(double)));
            dt.Columns.Add(new DataColumn("ImageValue", typeof(String)));

            // Populate the table with sample values.
            for (int i = 0; i < 9; i++)
            {
                dr = dt.NewRow();

                dr[0] = i;
                dr[1] = "Description for item " + i.ToString();
                dr[2] = 1.23 * (i + 1);
                dr[3] = "Image" + i.ToString() + ".jpg";

                dt.Rows.Add(dr);
            }

            DataView dv = new DataView(dt);
            return dv;
        }




        protected void Button_Click(Object sender, EventArgs e)
        {

            // Set the repeat direction based on the selected value of the
            // DirectionList DropDownList control.
            ItemsList.RepeatDirection =
                (RepeatDirection)DirectionList.SelectedIndex;

            // Set the repeat layout based on the selected value of the
            // LayoutList DropDownList control.
            ItemsList.RepeatLayout = (RepeatLayout)LayoutList.SelectedIndex;

            // Set the number of columns to display based on the selected
            // value of the ColumnsList DropDownList control.
            ItemsList.RepeatColumns = ColumnsList.SelectedIndex;

            // Show or hide the gridlines based on the value of the
            // ShowBorderCheckBox property. Note that gridlines are displayed
            // only if the RepeatLayout property is set to Table.
            if ((ShowBorderCheckBox.Checked)
                && (ItemsList.RepeatLayout == RepeatLayout.Table))
            {
                ItemsList.BorderWidth = Unit.Pixel(1);
                ItemsList.GridLines = GridLines.Both;
            }
            else
            {
                ItemsList.BorderWidth = Unit.Pixel(0);
                ItemsList.GridLines = GridLines.None;
            }

        }    
 

    }
}