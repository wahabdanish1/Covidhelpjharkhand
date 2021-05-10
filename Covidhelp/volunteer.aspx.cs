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
    public partial class volunteer : System.Web.UI.Page
    {
        DALayer DaObj = new DALayer();
        string dbname;
        public enum MessageType { Success, Error, Info, Warning };

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    form_Clear();
                    dbname = GetDatabaseNameUsingXML("Ranchi");
                    ViewState["dbname"] = dbname;
                    Bind_District();

                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" +ex.Message.ToString()+"', 'error')", true);
            }

        }

        private void Bind_District()
        {
            try
            {
                //dbname = GetDatabaseNameUsingXML("Ranchi");
                DataSet ds = new DataSet();
                ds = DaObj.Execute_SP("Get_All_district", ViewState["dbname"].ToString());

                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        ddldistrict.DataSource = ds.Tables[0];

                        ddldistrict.DataBind();
                    }
                    else
                    {
                        ddldistrict.DataSource = null;
                        ddldistrict.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }
        }

        protected void ShowMessage(string Message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
        }

        protected void btnHospitalsave_ServerClick(object sender, EventArgs e)
        {
            string dist_code = ddldistrict.SelectedValue;
            string Hospitalname = txtHospitalName.Value;
            string Hospital_Phone = txtHospitalPhone.Value;
            string ICPhone = txtICPhone.Value;
            string ICUBed = txtICUbed.Value;
            string OxyBed = txtOxybed.Value;
            string NormalBed = txtNormalbed.Value;

            try
            {

               
                string Status1 = ddlIsactive.SelectedItem.Value;
                string Status;

                if (Status1 == "1")
                {
                    Status = "Y";
                }
                else
                {
                    Status = "N";
                }

                bool valid = Validate_data();

                if (valid == true)
                {
                    int totalavailableBed = Convert.ToInt32(ICUBed) + Convert.ToInt32(OxyBed) + Convert.ToInt32(NormalBed);

                    DataSet ds = new DataSet();
                    ds = SaveHospitalInfo(dist_code, Hospitalname, Hospital_Phone, ICPhone, totalavailableBed, ICUBed, OxyBed, NormalBed, Status, ViewState["dbname"].ToString());
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            if (ds.Tables[0].Rows[0]["Saved"].ToString() == "1")
                            {
                                //lblHospitalmsg.InnerText = "Hospital Info saved successfully!";
                                //lblHospitalmsg.Attributes["style"] = "color:blue; font-weight:bolder;";
                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Great!', 'Hospital Info saved successfully!', 'success')", true);
                                
                            }
                            else
                            {
                                //lblHospitalmsg.InnerText = "Save Status:0 ! Unable to Save Hospital Info!";
                                //lblHospitalmsg.Attributes["style"] = "color:red; font-weight:bolder;";
                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Unable to save Hospital Info!', 'error')", true);                                
                            }
                        }
                        else
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('No Row Found!', 'Unable to save Hospital Info!', 'error')", true);
                            
                        }
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Table Not Found!', 'Unable to save Hospital Info!', 'error')", true);
                       
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Warning!', 'Please fill the details Properly!', 'warning')", true);
                }                

            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }

        }

        private DataSet SaveHospitalInfo(string dist_code, string hospitalname, string hospital_Phone, string iCPhone, int totalavailableBed, string iCUBed, string oxyBed, string normalBed, string status, string dbname)
        {
            DataSet ds = new DataSet();
            try
            {
                ds = DaObj.Execute_SP("SP_Save_HospitalInfo '" + dist_code + "', '" + hospitalname + "', '" + hospital_Phone + "', '" + iCPhone + "', '" + totalavailableBed + "', '" + iCUBed + "', '" + oxyBed + "', '" + normalBed + "', '" + status + "'", dbname);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }
            return ds;
        }

        private bool Validate_data()
        {
            if (((txtHospitalName != null) || (txtHospitalName.Value != "")) && ((txtHospitalPhone != null) || (txtHospitalPhone.Value != "")) && (ckbhospital.Checked == true))
            {
                return true;
            }
            if (((ddldistrict.SelectedItem.Value != null) || (ddldistrict.SelectedItem.Value != "-1")) && ((txtOxyOrgnization.Value != null) || (txtOxyOrgnization.Value != "")) && ((txtOxycontactperson.Value != null) || (txtOxycontactperson.Value != "")) && ((txtOxyPhno.Value != null) || (txtOxyPhno.Value != "")) && (ckboxy.Checked == true))
            {
                return true;
            }
            if (((ddldistrict.SelectedItem.Value != null) || (ddldistrict.SelectedItem.Value != "-1")) && ((txtBloodgroup.Value != null) || (txtBloodgroup.Value != "")) && ((txtBloodcontact.Value != null) || (txtBloodcontact.Value != "")) && ((txtbloodphone.Value != null) || (txtbloodphone.Value != "")) && ((ddldonortype.SelectedItem.Value != null) || (ddldonortype.SelectedItem.Value != "-1")) && (ckbblood.Checked == true))
            {
                return true;
            }
            if (((ddldistrict.SelectedItem.Value != null) || (ddldistrict.SelectedItem.Value != "-1")) && ((txtDoctorname != null) || (txtDoctorname.Value != "")) && ((txtdocphoneno != null) || (txtdocphoneno.Value != "")) && (ckbDoc.Checked == true))
            {
                return true;
            }
            if (((ddldistrict.SelectedItem.Value != null) || (ddldistrict.SelectedItem.Value != "-1")) && ((txtAmphoneno != null) || (txtAmphoneno.Value != "")) && ((txtAmHospital != null) || (txtAmHospital.Value != "")) && ((txtAmPerson != null) || (txtAmPerson.Value != "")) && (ckbAmbulance.Checked == true))
            {
                return true;
            }
            if (((ddldistrict.SelectedItem.Value != null) || (ddldistrict.SelectedItem.Value != "-1")) && ((txtfoodphone != null) || (txtfoodphone.Value != "")) && ((txtfoodcontactPerson != null) || (txtfoodcontactPerson.Value != "")) && ((txtfoodHotel != null) || (txtfoodHotel.Value != "")) && (ckbfood.Checked == true))
            {
                return true;
            }
            else
                return false;
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
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }

            return dbName;
        }

        protected void btnOxySave_ServerClick(object sender, EventArgs e)
        {
            string dist_code = ddldistrict.SelectedValue;
            string Organizationname = txtOxyOrgnization.Value;
            string OxyContact_person = txtOxycontactperson.Value;
            string OxyPhoneno = txtOxyPhno.Value;
            string Status1 = ddlOxyStatus.SelectedItem.Value;
            string Status;

            if (Status1 == "1")
            {
                Status = "Y";
            }
            else
            {
                Status = "N";
            }

            try
            {
                bool valid = Validate_data();

                if (valid == true)
                {
                    DataSet ds = new DataSet();
                    ds = SaveOxygeninfo(dist_code, Organizationname, OxyContact_person, OxyPhoneno, Status, ViewState["dbname"].ToString());
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            if (ds.Tables[0].Rows[0]["Saved"].ToString() == "1")
                            {
                                //lblOxymsg.InnerText = "Oxygen Info saved successfully!";
                                //lblOxymsg.Attributes["style"] = "color:blue; font-weight:bolder;";
                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Great!', 'Oxygen Info saved successfully!', 'success')", true);                               
                            }
                            else
                            {
                                //lblOxymsg.InnerText = "Save Status:0 ! Unable to Save Oxygen Info!";
                                //lblOxymsg.Attributes["style"] = "color:red; font-weight:bolder;";
                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Unable to save Oxygen Info!', 'error')", true);
                            }
                        }
                        else
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'No Row Found! Unable to Save Oxygen Info!', 'error')", true);                            
                        }
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Table Not Found! Unable to Save Oxygen Info!', 'error')", true);                        
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" +ex.Message.ToString()+"', 'error')", true);
            }
        }

        private DataSet SaveOxygeninfo(string dist_code, string organizationname, string oxyContact_person, string oxyPhoneno, string status, string dbname)
        {
            DataSet ds = new DataSet();
            try
            {
                ds = DaObj.Execute_SP("SP_Save_OxygenInfo '" + dist_code + "', '" + organizationname + "', '" + oxyContact_person + "', '" + oxyPhoneno + "', '" + status + "'", dbname);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }
            return ds;
        }

        protected void btnbloodsave_ServerClick(object sender, EventArgs e)
        {
            string dist_code = ddldistrict.SelectedValue;
            string bloodgrp = txtBloodgroup.Value;
            string donortype = ddldonortype.SelectedItem.Value;
            string DonorName = txtBloodcontact.Value;
            string donorPhoneNo = txtbloodphone.Value;
            string donorCity = txtbloodcity.Value;
            string Status1 = ddlIsactive.SelectedItem.Value;
            string Status;

            if (Status1 == "1")
            {
                Status = "Y";
            }
            else
            {
                Status = "N";
            }

            if (donortype == "1")
            {
                donortype = "B";
            }
            else
            {
                donortype = "P";
            }

            try
            {
                bool valid = Validate_data();

                if (valid == true)
                {
                    DataSet ds = new DataSet();
                    ds = DaObj.Execute_SP("SP_Save_PlazmaInfo '" + dist_code + "', '" + bloodgrp + "', '" + donortype + "', '" + DonorName + "', '" + donorPhoneNo + "', '" + donorCity + "', '" + Status + "'", ViewState["dbname"].ToString());
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            if (ds.Tables[0].Rows[0]["Saved"].ToString() == "1")
                            {
                                
                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Great!', 'Blood/Plazma Info saved successfully!', 'success')", true);
                                
                            }
                            else
                            {
                                //lblBloodmsg.InnerText = "Save Status:0 ! Unable to Save Hospital Info!";
                                //lblBloodmsg.Attributes["style"] = "color:red; font-weight:bolder;";
                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Unable to save Blood/Plazma Info!', 'error')", true);
                                
                            }
                        }
                        else
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('No Row Found!', 'Unable to save Blood/Plazma Info!', 'error')", true);
                            
                        }
                    }

                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Warning!', 'Please fill the details Properly!', 'warning')", true);
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }

        }

        private void form_Clear()
        {
            txtHospitalName.Value = "";
            txtHospitalPhone.Value = "";
            txtICPhone.Value = "";
            txtICUbed.Value = "";
            txtOxybed.Value = "";
            txtNormalbed.Value = "";
            ddlIsactive.SelectedIndex = 0;

            txtOxyOrgnization.Value = "";
            txtOxycontactperson.Value = "";
            txtOxyPhno.Value = "";

            txtBloodgroup.Value = "";
            txtBloodcontact.Value = "";
            txtbloodcity.Value = "";
            txtbloodphone.Value = "";
            ddldonortype.SelectedIndex = 0;
            ddlbloodstatus.SelectedIndex = 0;
            ddlOxyStatus.SelectedIndex = 0;
            ddldocstatus.SelectedIndex = 0;
            ddlAmstatus.SelectedIndex = 0;
            ddlfoodstatus.SelectedIndex = 0;
            txtDocHospitalname.Value = "";
            txtDoctorname.Value="";
            txtdocphoneno.Value = "";

            txtAmHospital.Value = "";
            txtAmPerson.Value = "";
            txtAmphoneno.Value = "";

            txtfoodHotel.Value = "";
            txtfoodcontactPerson.Value = "";
            txtfoodphone.Value = "";

            lblHospitalmsg.InnerText = "";
            lblOxymsg.InnerText = "";
            lblBloodmsg.InnerText = "";

            ckbhospital.Checked = false;
            ckboxy.Checked = false;
            ckbblood.Checked = false;
            ckbDoc.Checked = false;
            ckbAmbulance.Checked = false;
            ckbfood.Checked = false;

        }

        protected void BtnDoctorSave_ServerClick(object sender, EventArgs e)
        {
            string dist_code = ddldistrict.SelectedValue;
            string DocHospitalName = txtDocHospitalname.Value;
            string DoctorName = txtDoctorname.Value;
            string DocPhone = txtdocphoneno.Value;

            try
            {
                bool valid = Validate_data();

                if (valid == true)
                {
                    DataSet ds = new DataSet();
                    ds = DaObj.Execute_SP("SP_Save_DoctorInfo '" + dist_code + "', '" + DocHospitalName + "', '" + DoctorName + "', '" + DocPhone + "'", ViewState["dbname"].ToString());
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            if (ds.Tables[0].Rows[0]["Saved"].ToString() == "1")
                            {

                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Great!', 'Doctor Info saved successfully!', 'success')", true);

                            }
                            else
                            {                                
                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Unable to save Doctor Info!', 'error')", true);

                            }
                        }
                        else
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('No Row Found!', 'Unable to save Doctor Info!', 'error')", true);

                        }
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Table Not Found! Unable to Save Doctor Info!', 'error')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Warning!', 'Please fill the details Properly!', 'warning')", true);
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }
        }

        protected void btnAmbulanceSave_ServerClick(object sender, EventArgs e)
        {
            string dist_code = ddldistrict.SelectedValue;
            string AmHospital = txtAmHospital.Value;
            string Amcontactperson = txtAmPerson.Value;
            string Amphoneno = txtAmphoneno.Value;

            try
            {
                bool valid = Validate_data();

                if (valid == true)
                {
                    DataSet ds = new DataSet();
                    ds = DaObj.Execute_SP("SP_Save_AmbulanceInfo '" + dist_code + "', '" + AmHospital + "', '" + Amcontactperson + "', '" + Amphoneno + "'", ViewState["dbname"].ToString());
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            if (ds.Tables[0].Rows[0]["Saved"].ToString() == "1")
                            {

                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Great!', 'Ambulance Info saved successfully!', 'success')", true);

                            }
                            else
                            {
                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Unable to save Ambulance Info!', 'error')", true);

                            }
                        }
                        else
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('No Row Found!', 'Unable to save Ambulance Info!', 'error')", true);

                        }
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Table Not Found! Unable to Save Ambulance Info!', 'error')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Warning!', 'Please fill the details Properly!', 'warning')", true);
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }
        }

        protected void btnfoodsave_ServerClick(object sender, EventArgs e)
        {
            string dist_code = ddldistrict.SelectedValue;
            string Hotelname = txtfoodHotel.Value;
            string foodContact = txtfoodcontactPerson.Value;
            string Foodphoneno = txtfoodphone.Value;

            try
            {
                bool valid = Validate_data();

                if (valid == true)
                {
                    DataSet ds = new DataSet();
                    ds = DaObj.Execute_SP("SP_Save_FoodInfo '" + dist_code + "', '" + Hotelname + "', '" + foodContact + "', '" + Foodphoneno + "'", ViewState["dbname"].ToString());


                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            if (ds.Tables[0].Rows[0]["Saved"].ToString() == "1")
                            {

                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Great!', 'Food Info saved successfully!', 'success')", true);

                            }
                            else
                            {
                                form_Clear();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Unable to save Food Info!', 'error')", true);

                            }
                        }
                        else
                        {
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('No Row Found!', 'Unable to save Food Info!', 'error')", true);

                        }
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Oops!', 'Table Not Found! Unable to Save Food Info!', 'error')", true);
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Warning!', 'Please fill the details Properly!', 'warning')", true);
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertMessage", "swal('Error!', '" + ex.Message.ToString() + "', 'error')", true);
            }
        }
    }
}