using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btSignup_Click(object sender, EventArgs e)
        {
            Session["user"] = first_name.Text +" " +last_name.Text;
            Response.Redirect("Home.aspx");
        }

        protected void id_ServerValidate(object source, ServerValidateEventArgs e)
        {
           
            int[] id_12_digits = { 1, 2, 1, 2, 1, 2, 1, 2, 1 };
            int count = 0;
            string s = e.Value.PadLeft(9, '0');//מוריד את ספרת הביקורת 0
            int number;
            bool flag=true;
            for (int i = 0; i < 9 && flag; i++)
            {
                bool success = Int32.TryParse(s.Substring(i, 1), out number);
                if (success)
                {
                    int num = number * id_12_digits[i];

                    if (num > 9)
                        num = (num / 10) + (num % 10);

                    count += num;
                }
                else
                {
                    e.IsValid = false;
                    flag = false;
                    CustomValidator1.ErrorMessage = "Worng id";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Validation Failed" + "');", true);
                }
            }
            if (flag)
                e.IsValid = (count % 10 == 0);
        }

        protected void btSignup_Click1(object sender, EventArgs e)
        {
            UsersLogic us = new UsersLogic();
            if (us.checkExistPassword(password.Text))
                Label1.Text = "סיסמא קיימת בחר סיסמא אחרת";
           // else
                //us.addnew... 



        }
    }

   
}