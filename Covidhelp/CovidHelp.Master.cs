using Covidhelp.DA_Layer;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Covidhelp
{
    public partial class CovidHelp : System.Web.UI.MasterPage
    {
        DALayer DaObj = new DALayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            string username = txtUsername.Value;
            string Role = ddlRole.SelectedItem.Value;
            string Password = txtpassword.Value;


            try
            {

                if (Role == "1")
                {
                    Role = "AD";
                }                    
                else
                {
                    Role = "OR";
                }
                    
                string dbname = GetDatabaseNameUsingXML("Ranchi");
                DataSet ds = new DataSet();
                ds = DaObj.Execute_SP("Authenticate_User '" + username + "', '" + Role + "', '" + Password + "'", dbname);

                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        if (ds.Tables[0].Rows[0]["Exist"].ToString() =="1")
                        {
                            Response.Redirect("volunteer.aspx");
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "swal('Invalid Username or Password!', 'Please Try Again...', 'warning')", true);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "swal('Oops..!', 'No Data Available...', 'warning')", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "swal('Oops..!', 'Table Not Found...', 'warning')", true);
                }
            }
            catch (Exception ex)
            {                
                ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }
        }

        private string GetDatabaseNameUsingXML(string DistrictName)
        {
            string dbName = null;
            try
            {
                string xmlStr = File.ReadAllText(Server.MapPath("App_Data/Determine_Database.xml"));
                //string xmlStr = File.ReadAllText(Server.MapPath("App_Data/DetermineDatabase.xml"));
                XmlDocument xml = new XmlDocument();
                xml.LoadXml(xmlStr);
                XmlNodeList xnList = xml.SelectNodes("/States/State/District[@Name='" + DistrictName + "']");
                foreach (XmlNode xn in xnList)
                {
                    dbName = xn.InnerText;
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }

            return dbName;
        }
    }
}