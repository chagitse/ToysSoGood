using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToysSoGood.App_Code;

namespace ToysSoGood
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSignup_Click(object sender, EventArgs e)
        {
            bool flag = true;
            UserServise us = new UserServise();
            if (Validation.isEmpty(first_name.Text))
            {
                lFirstName.Text = "Enter first name";
                lFirstName.Visible = true;
                flag = false;
            }
            else
                lFirstName.Visible = false;
            if (last_name.Text.Length == 0)
            {
                lLastName.Text = "Enter last name";
                lLastName.Visible = true;
                flag = false;
            }
            else
                lLastName.Visible = false;
            if (email.Text.Trim().Length == 0)
            {
                lemail.Text = "Enter email";
                lemail.Visible = true;
                flag = false;
            }
            else if (!Validation.Email(email.Text))
            {
                lemail.Text = "Invalid email address";
                lemail.Visible = true;
                flag = false;

            }
            else
                lemail.Visible = false;
            if (user_name.Text.Trim().Length == 0)
            {
                lUserName.Text = "Enter username";
                lUserName.Visible = true;
                flag = false;
            }
            
            else if (us.CheckUsername(user_name.Text) !=0)
            {
                flag = false;
                lUserName.Text = "Username already exists";
                lUserName.Visible = true;
            }
            else
                lUserName.Visible = false;
            if (password.Text.Trim().Length < 6)
            {
                flag = false;
                lPassword.Text = "Password must contain at least 6 characters";
                lPassword.Visible = true;
            }
            else
            {
                if (password.Text != password_confirmation.Text)
                {
                    flag = false;
                    lpassword_confirmation.Text = "Please check that you've entered and confirmed your password";
                    lpassword_confirmation.Visible = true;
                }
                else
                    lpassword_confirmation.Visible = false;
                lPassword.Visible = false;
            }
            if (!t_and_c.Checked)
            {
                flag = false;
                lt_and_c.Text = "you must agree to our terms of service and privacy policy";
                lt_and_c.Visible = true;
            }
            else
                lt_and_c.Visible = false;
            if (flag)
            {
                Users u = new Users(Request.Form["first_name"], last_name.Text.Trim(), email.Text.Trim(), user_name.Text.Trim(), password.Text.Trim());
                us.InsertUser(u);
                Session["user"] = u;
                Response.Redirect("~/LogIn.aspx");
            }
        }
    }
}
 