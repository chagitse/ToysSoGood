using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood
{
    public partial class DataListScedual : System.Web.UI.Page
    {
        ProductsServices prod = new ProductsServices();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                List<Products> myList = new List<Products>();
                List<Products> dbList = prod.GetMovieIDForPopuar();
                for (int i = 0; i < dbList.Count; i++)
                {
                    if (i!=3)
                        myList.Add(dbList[i]);
                    else
                        myList.Add(null);
                }
                DataList1.DataSource = myList;
                DataList1.DataBind();
            }
        }
    }
}