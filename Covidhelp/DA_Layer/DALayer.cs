using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Covidhelp.DA_Layer;

namespace Covidhelp.DA_Layer
{
    public class DALayer
    {
        public enum MessageType { Success, Error, Info, Warning };        
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable _datatable = new DataTable();
        DataSet ds = new DataSet();
        SqlCommand cmd;


        SqlConnection connection = null;

        private SqlConnection GetConnection(string ConnString)
        {
            SqlConnection connection = new SqlConnection(ConfigurationSettings.AppSettings.Get(ConnString));

            return connection;
        }

        internal DataSet Execute_SP(string SP, string con)
        {
            try
            {
                connection = GetConnection(con);
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                throw (new SystemException("The connection with the database can´t be established"));

            }
            try
            {
                DataSet ds = new DataSet();
                cmd = new SqlCommand(SP, connection);
                ds = new DataSet();
                sda = new SqlDataAdapter(cmd);
                sda.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                connection.Close();
                throw ex;
            }
            finally
            {
                connection.Close();
            }
        }
    }
}