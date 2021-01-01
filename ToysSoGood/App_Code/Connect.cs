using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web;

namespace ToysSoGood.App_Code
{
    public class Connect
    {
        OleDbConnection myConnection;
        const string FILE_NAME = "Toys.accdb";
        private SqlCommand command = new SqlCommand();

        public Connect()
        {
            string location = HttpContext.Current.Server.MapPath("~/App_Data/" + FILE_NAME);
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; data source=" + location;
            myConnection = new OleDbConnection(connectionString);
        }

        //פעולה המפעילה את השאילתא שנשלחת על בסיס הנתונים
        public DataSet excuteQuery(String sql)
        {
            DataSet dataset = new DataSet();
            try
            {
                myConnection.Open();
                string sSql = sql;
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                OleDbDataAdapter adapter = new OleDbDataAdapter();
                adapter.SelectCommand = myCmd;
                adapter.Fill(dataset);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                myConnection.Close();
            }
            return dataset;
        }


        public DataTable GetDataTable(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                myConnection.Open();
                string sSql = sql;
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                OleDbDataAdapter adapter = new OleDbDataAdapter();
                adapter.SelectCommand = myCmd;
                adapter.Fill(dt);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                myConnection.Close();
            }
            return dt;
        }

        //return records with reader
        public SqlDataReader executeReader(string sql)
        {
            SqlDataReader sqlreader;
            command.CommandType = CommandType.Text;
            command.CommandText = sql;

            if (myConnection.State == ConnectionState.Open)
                return command.ExecuteReader();
            else
            {
                myConnection.Open();
                sqlreader = command.ExecuteReader();
                myConnection.Close();
            }
            return sqlreader;
        }
    }
}