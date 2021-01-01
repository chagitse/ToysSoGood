using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace ToysSoGood.App_Code
{
    public static class Validation
    {

        public static bool isEmpty(string text)
        {
            if ((text.Trim()).Length < 1)
                return true;
            return false;
        }

        public static bool OnlyLetters(string text)
        {
            if (text.All(c => Char.IsLetter(c)))
                return true;
            return false;
        }

        public static bool OnlyNumbers(string text)
        {
            if (text.All(c => Char.IsDigit(c)))
                return true;
            return false;
        }

        public static bool OnlyDouble(string text)
        {
            double d;
            if (double.TryParse(text, out d))
                return true;
            return false;
        }

        public static bool ID(string text)
        {
            if (text.Length == 9 && CheckIDNo(text))
                return true;
            return false;
        }

        static bool CheckIDNo(String strID)
        {
            int[] id_12_digits = { 1, 2, 1, 2, 1, 2, 1, 2, 1 };
            int count = 0;

            if (strID == null)
                return false;

            strID = strID.PadLeft(9, '0');

            for (int i = 0; i < 9; i++)
            {
                int num = Int32.Parse(strID.Substring(i, 1)) * id_12_digits[i];

                if (num > 9)
                    num = (num / 10) + (num % 10);

                count += num;
            }

            return (count % 10 == 0);
        }

        public static bool Name(string text)
        {
            if (text.Length >= 2 && OnlyLetters(text))
                return true;
            return false;
        }

        public static bool MinChars(string text, int minChars)
        {
            if (text.Length >= minChars)
                return true;
            return false;
        }

        public static bool MaxChars(string text, int maxChars)
        {
            if (text.Length <= maxChars)
                return true;
            return false;
        }

        public static bool Date(string text)
        {
            if (IsValidDateTime(text))
                return true;
            return false;
        }

        static bool IsValidDateTime(string dateTime)
        {
            string[] formats = { "dd/MM/yyyy" };
            DateTime parsedDateTime;
            return DateTime.TryParseExact(dateTime, formats, new CultureInfo("en-US"),
                                           DateTimeStyles.None, out parsedDateTime);
        }

        public static bool Street(string text)
        {
            if (text.Length >= 2)
                return true;
            return false;
        }

        public static bool HouseNumber(string text)
        {
            if (OnlyNumbers(text))
                return true;
            return false;
        }
        public static bool City(System.Web.UI.WebControls.DropDownList ddl)
        {
            if (ddl.SelectedIndex > 0)
                return true;
            return false;
        }
        public static bool ZipCode(string text)
        {
            if ((text.Length == 5 || text.Length == 7) && OnlyNumbers(text))
                return true;
            return false;
        }

        public static bool PhoneNumber(System.Web.UI.WebControls.DropDownList ddl, string text)
        {
            if (ddl.SelectedIndex > 0 && text.Length == 7 && OnlyNumbers(text))
                return true;
            return false;
        }

        public static bool Email(string text)
        {
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(text);
            if (match.Success)
                return true;
            return false;
        }

        public static bool Passwords(string pass1, string pass2)
        {
            if (pass1 == pass2)
                return true;
            return false;
        }
    }



}