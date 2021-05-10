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
    public partial class deoghar : System.Web.UI.Page
    {
        DALayer DaObj = new DALayer();
        string dbname;
        public enum MessageType { Success, Error, Info, Warning };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Populate_Helpline("3");

            }
        }

        private void Populate_Helpline(string dist_code)
        {
            try
            {
                dbname = GetDatabaseNameUsingXML("Ranchi");
                DataSet ds = new DataSet();
                ds = DaObj.Execute_SP("Get_Helpline_Data '" + dist_code + "'", dbname);

                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GvHospital.DataSource = ds.Tables[0];
                        GvHospital.DataBind();
                    }
                    else
                    {
                        GvHospital.DataSource = null;
                        GvHospital.DataBind();
                        lblNoHospital.Text = "Sorry! No Data Available";
                    }

                    if (ds.Tables[1].Rows.Count > 0)
                    {
                        GvOxygen.DataSource = ds.Tables[1];
                        GvOxygen.DataBind();
                    }
                    else
                    {
                        GvOxygen.DataSource = null;
                        GvOxygen.DataBind();
                        lblNoOxy.Text = "Sorry! No Data Available";
                    }

                    if (ds.Tables[2].Rows.Count > 0)
                    {
                        GvPlazma.DataSource = ds.Tables[2];
                        GvPlazma.DataBind();
                    }
                    else
                    {
                        GvPlazma.DataSource = null;
                        GvPlazma.DataBind();
                        lblNoPlazma.Text = "Sorry! No Data Available";
                    }

                    if (ds.Tables[3].Rows.Count > 0)
                    {
                        GvDoctor.DataSource = ds.Tables[3];
                        GvDoctor.DataBind();
                    }
                    else
                    {
                        GvDoctor.DataSource = null;
                        GvDoctor.DataBind();
                        lblNoDoctor.Text = "Sorry! No Data Available";
                    }

                    if (ds.Tables[4].Rows.Count > 0)
                    {
                        GvAmbulance.DataSource = ds.Tables[4];
                        GvAmbulance.DataBind();
                    }
                    else
                    {
                        GvAmbulance.DataSource = null;
                        GvAmbulance.DataBind();
                        lblAmbulance.Text = "Sorry! No Data Available";
                    }

                    if (ds.Tables[5].Rows.Count > 0)
                    {
                        GvFood.DataSource = ds.Tables[5];
                        GvFood.DataBind();
                    }
                    else
                    {
                        GvFood.DataSource = null;
                        GvFood.DataBind();
                        lblNoFood.Text = "Sorry! No Data Available";
                    }


                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('No Table Available','" + MessageType.Error + "');", true);
                }

            }
            catch (Exception ex)
            {
                ShowMessage(ex.Message.Replace("'", ""), MessageType.Error);
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
                ShowMessage(ex.Message.Replace("'", ""), MessageType.Error);
            }

            return dbName;
        }

        protected void ShowMessage(string Message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
        }
    }

   
}