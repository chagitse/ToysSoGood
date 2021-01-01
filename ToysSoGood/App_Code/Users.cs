using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToysSoGood.App_Code
{
    public class Users
    {
        string firstName;
        string lastName;
        string email;
        string userName;
        string password;
        
        public Users(string first, string last, string email, string userName, string pass)
        {
            this.firstName = first;
            this.lastName = last;
            this.email = email;
            this.userName = userName;
            this.password = pass;
        }


        public string getFirstName() {
            return firstName;
        }

        public void setFirstName(string firstName)
        {
            this.firstName = firstName;
        }

        public string getlastName()
        {
            return lastName;
        }

        public void setlastName(string lastName)
        {
            this.lastName = lastName;
        }
        public string getemail()
        {
            return email;
        }

        public void setemail(string email)
        {
            this.email = email;
        }
        public string getuserName()
        {
            return userName;
        }

        public void setuserName(string userName)
        {
            this.userName = userName;
        }
        public string getpassword()
        {
            return password;
        }

        public void setpassword(string password)
        {
            this.password = password;
        }
        
    }
}