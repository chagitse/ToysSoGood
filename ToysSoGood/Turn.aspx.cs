using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToysSoGood
{
    public partial class Turn : System.Web.UI.Page
    {
        public string PropertyName;
        public string[] arr = { "a", "b", "c", "d" };// new string[4];
        public int x = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            PropertyName = "aaaaaaaa";
            arr[0] = "aaa";
            arr[1] = "bbb";
            arr[2] = "ccc";
            arr[3] = "ddd";
        }
    }
}