using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToysSoGood.Admin
{
    public partial class AddNewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        
        
        protected void SavePicture(object sender, EventArgs e)
        {
            //save image name
            string imageName = FileUpload1.PostedFile.FileName;
            //מחזיר את הנתיב של התיקיה בשרת
            string path = Server.MapPath(@"~/Images/");
            //בדיקה שקובץ התמונה שהמשתמש הזין לא קיים כבר במערכת 
             if (File.Exists(path + imageName))
              lblMessage.Text = "הקובץ כבר קיים במערכת";
            else
            {
                //שמירה של קובץ התמונה בתיקיה של האתר
                FileUpload1.PostedFile.SaveAs(path + imageName);
                lblMessage.Text = "הקובץ נשמר בהצלחה";
            }
        }
    }
}