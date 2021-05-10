<%@ Page Title="" Language="C#" MasterPageFile="~/CovidHelp.Master" AutoEventWireup="true" CodeBehind="volunteer.aspx.cs" Inherits="Covidhelp.volunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script type="text/javascript">
        function ShowMessage(message, messagetype) {
            var cssclass;
            switch (messagetype) {
                case 'Success':
                    cssclass = 'alert-success'
                    break;
                case 'Error':
                    cssclass = 'alert-danger'
                    break;
                case 'Warning':
                    cssclass = 'alert-warning'
                    break;
                default:
                    cssclass = 'alert-info'
            }
            $('#alert_container').append('<div id="alert_div" style="margin: 0 10%; -webkit-box-shadow: 8px 9px 12px 3px #999;width:50%; height:80%; padding-left: 4%; line-height: 2.5;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong><i class="icon icon_info"></i>  ' + messagetype + '!</strong> <span>' + message + '</span></div>');
            return false;
        }
    </script>
   
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main main-raised">
        <div class="container">
            
            <div class="section text-center">
                <nav aria-label="breadcrumb" role="navigation">
                    <div class="form-row">

                        <div class="form-group col-md-12">
                            <div class="text-right">
                            <a href="default.aspx" class="btn btn-primary btn-fab btn-fab-mini btn-round">
                                <i class="material-icons">home</i>
                            </a>
                        </div>
                        </div>
                        </div>                   
                    <div class="form-row">

                        <div class="form-group col-md-3"></div>
                        <div class="form-group col-md-6">
                            <div class=" text-left">
                                <label for="exampleFormControlSelect1" class=" text-primary">Select District</label>
                            </div>

                            <asp:DropDownList ID="ddldistrict" runat="server" class=" form-control dropdown-item" data-style="btn btn-link" DataTextField="District_Name" DataValueField="District_Code">
                                <asp:ListItem Text="Select District" Value="-1" />                                
                            </asp:DropDownList>                            
                        </div>
                        
                        <div class="form-group col-md-3">
                            
                        </div>
                        
                    </div>                    
                </nav>

                <div class=" space-50"></div>

                <div class="card card-nav-tabs">
                <div class="card-header card-header-primary">
                  <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
                  <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                      <ul class="nav nav-tabs" data-tabs="tabs">
                        <li class="nav-item">
                          <a class="nav-link active" href="#GvHospital_Area" data-toggle="tab">
                            <i class="material-icons">local_hospital</i>
                            Hospital
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#Oxygen" data-toggle="tab">
                            <i class="material-icons">health_and_safety</i>
                            Oxygen
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#Plazma" data-toggle="tab">
                            <i class="material-icons">water_drop</i>
                            Plazma
                          </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Doctor" data-toggle="tab">
                                <i class="material-icons">local_pharmacy</i>
                                Doctor
                          </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#Ambulance" data-toggle="tab">
                                <i class="material-icons">airport_shuttle</i>
                                Ambulance
                          </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#Food" data-toggle="tab">
                                <i class="material-icons">fastfood</i>
                                Food Delivery
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>

                <div class="card-body ">
                  <div class="tab-content text-center">
                                <div class="tab-pane active" id="GvHospital_Area">
                                    <div class="">
                                        <div class="form-row">
                                            <div class="col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Hospital Name</label>
                                                    <input id="txtHospitalName" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Hospital Ph No</label>
                                                    <input id="txtHospitalPhone" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-sm-1 col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">IC Phone No</label>
                                                    <input id="txtICPhone" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">ICU Bed</label>
                                                    <input id="txtICUbed" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <asp:label runat="server" Text="Oxygen Bed" class="bmd-label-floating"></asp:label>
                                                    <input id="txtOxybed" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Normal Bed</label>
                                                    <input id="txtNormalbed" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            
                                            <div class="col-1"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-1"></div>
                                            
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class=" col-form-label">Status</label>
                                                    <asp:DropDownList ID="ddlIsactive" runat="server" class=" form-control dropdown-item" data-style="btn btn-link">
                                                        <asp:ListItem Text="Activate" Value="1" />
                                                        <asp:ListItem Text="Disable"  Value="2" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>

                                        <div class="form-row">
                                            <div class="col-12 text-center">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input id="ckbhospital" runat="server" class="form-check-input" type="checkbox" value=""/>
                                                            Check if all above Info is Correct!
                                                          <span class="form-check-sign">
                                                              <span class="check"></span>
                                                          </span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <button id="btnHospitalsave" type="submit" runat="server" class="btn btn-primary" onserverclick="btnHospitalsave_ServerClick">Save</button>
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="col-12 text-center">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label id="lblHospitalmsg" runat="server"  class="form-check-label">
                                                           
                                                        </label>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Oxygen">
                                   <div class="">
                                        <div class="form-row">
                                            <div class="col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Organization</label>
                                                    <input id="txtOxyOrgnization" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Contact Person</label>
                                                    <input id="txtOxycontactperson" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-sm-1 col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Phone No</label>
                                                    <input id="txtOxyPhno" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    
                                                    <asp:DropDownList ID="ddlOxyStatus" runat="server" class=" form-control dropdown-item" data-style="btn btn-link">
                                                        <asp:ListItem Text="Status" Value="-1" />
                                                        <asp:ListItem Text="Activate" Value="1" />
                                                        <asp:ListItem Text="Disable"  Value="2" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>
                                       

                                        <div class="form-row">
                                            <div class="col-12 text-center">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input id="ckboxy" runat="server" class="form-check-input" type="checkbox" value=""/>
                                                            Check if all above Info is Correct!
                                                          <span class="form-check-sign">
                                                              <span class="check"></span>
                                                          </span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <button id="btnOxySave" type="submit" runat="server" class="btn btn-primary" onserverclick="btnOxySave_ServerClick" >Save</button>
                                            </div>
                                        </div>
                                       <div class="form-row">
                                            <div class="col-12 text-center">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label id="lblOxymsg" runat="server"  class="form-check-label">
                                                           
                                                        </label>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Plazma">
                                    <div class="">
                                        <div class="form-row">
                                            <div class="col-1"></div>
                                             
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Blood Group</label>
                                                    <input id="txtBloodgroup" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>

                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                   
                                                    <asp:DropDownList ID="ddldonortype" runat="server" class=" form-control dropdown-item" data-style="btn btn-link">
                                                        <asp:ListItem Text="Donor Type" Value="-1" />
                                                        <asp:ListItem Text="Blood" Value="1" />
                                                        <asp:ListItem Text="Plazma"  Value="2" />
                                                    </asp:DropDownList>
                                                </div>

                                                
                                            </div>
                                            
                                            <div class="col-1"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-sm-1 col-1"></div>
                                           
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Contact Person</label>
                                                    <input id="txtBloodcontact" runat="server" type="text" class="form-control"/>
                                                </div>

                                                
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Phone No</label>
                                                    <input id="txtbloodphone" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            
                                            <div class="col-1"></div>
                                        </div>
                                       
                                        <div class="form-row">
                                            <div class="col-1"></div>
                                            
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">City</label>
                                                    <input id="txtbloodcity" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                   
                                                    <asp:DropDownList ID="ddlbloodstatus" runat="server" class=" form-control dropdown-item" data-style="btn btn-link">
                                                        <asp:ListItem Text="Status" Value="-1" />
                                                        <asp:ListItem Text="Active" Value="1" />
                                                        <asp:ListItem Text="Disable"  Value="2" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>

                                        <div class="form-row">
                                            <div class="col-12 text-center">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input id="ckbblood" runat="server" class="form-check-input" type="checkbox" value=""/>
                                                            Check if all above Info is Correct!
                                                          <span class="form-check-sign">
                                                              <span class="check"></span>
                                                          </span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <button id="btnbloodsave" type="submit" runat="server" class="btn btn-primary" onserverclick="btnbloodsave_ServerClick">Save</button>
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="col-12 text-center">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label id="lblBloodmsg" runat="server"  class="form-check-label">
                                                           
                                                        </label>
                                                    </div>
                                                </div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Doctor">
                                    <div class="">
                                        <div class="form-row">
                                            <div class="col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Hospital Name</label>
                                                    <input id="txtDocHospitalname" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Doctor Name</label>
                                                    <input id="txtDoctorname" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-sm-1 col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Phone No</label>
                                                    <input id="txtdocphoneno" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    
                                                    <asp:DropDownList ID="ddldocstatus" runat="server" class=" form-control dropdown-item" data-style="btn btn-link">
                                                        <asp:ListItem Text="Status" Value="-1" />
                                                        <asp:ListItem Text="Activate" Value="1" />
                                                        <asp:ListItem Text="Disable"  Value="2" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>         

                                        <div class="form-row">
                                            <div class="col-12 text-center">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input id="ckbDoc" runat="server" class="form-check-input" type="checkbox" value=""/>
                                                            Check if all above Info is Correct!
                                                          <span class="form-check-sign">
                                                              <span class="check"></span>
                                                          </span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <button id="BtnDoctorSave" type="submit" runat="server" class="btn btn-primary" onserverclick="BtnDoctorSave_ServerClick" >Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Ambulance">
                                    <div class="">
                                        <div class="form-row">
                                            <div class="col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Hospital Name</label>
                                                    <input id="txtAmHospital" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Contact Person</label>
                                                    <input id="txtAmPerson" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-sm-1 col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Phone No</label>
                                                    <input id="txtAmphoneno" runat="server" type="text" class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    
                                                    <asp:DropDownList ID="ddlAmstatus" runat="server" class=" form-control dropdown-item" data-style="btn btn-link">
                                                        <asp:ListItem Text="Status" Value="-1" />
                                                        <asp:ListItem Text="Activate" Value="1" />
                                                        <asp:ListItem Text="Disable"  Value="2" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>         

                                        <div class="form-row">
                                            <div class="col-12 text-center">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input id="ckbAmbulance" runat="server" class="form-check-input" type="checkbox" value=""/>
                                                            Check if all above Info is Correct!
                                                          <span class="form-check-sign">
                                                              <span class="check"></span>
                                                          </span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <button id="btnAmbulanceSave" type="submit" runat="server" class="btn btn-primary" onserverclick="btnAmbulanceSave_ServerClick" >Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Food">
                                    <div class="">
                                        <div class="form-row">
                                            <div class="col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Hotel/Organization</label>
                                                    <input id="txtfoodHotel" runat="server" type="text" class="form-control" required="required"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Contact Person</label>
                                                    <input id="txtfoodcontactPerson" runat="server" type="text" class="form-control" required="required"/>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-sm-1 col-1"></div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    <label class="bmd-label-floating">Phone No</label>
                                                    <input id="txtfoodphone" runat="server" type="text" class="form-control" required="required"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-5">
                                                <div class="form-group bmd-form-group text-left">
                                                    
                                                    <asp:DropDownList ID="ddlfoodstatus" runat="server" class=" form-control dropdown-item" data-style="btn btn-link">
                                                        <asp:ListItem Text="Status" Value="-1" />
                                                        <asp:ListItem Text="Activate" Value="1" />
                                                        <asp:ListItem Text="Disable"  Value="2" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-1"></div>
                                        </div>         

                                        <div class="form-row">
                                            <div class="col-12 text-center">
                                                <div class="form-group">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input id="ckbfood" runat="server" class="form-check-input" type="checkbox" value="" required="required"/>
                                                            Check if all above Info is Correct!
                                                          <span class="form-check-sign">
                                                              <span class="check"></span>
                                                          </span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <button id="btnfoodsave" type="submit" runat="server" class="btn btn-primary" onserverclick="btnfoodsave_ServerClick" >Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                </div>
              </div>




                <%--<div class="card card-nav-tabs text-center">
                    <div class="card-header card-header-primary">
                        Jharkhand Covid Help Volunteer
                    </div>
                    <div class="card-body text-center">
                        <div class="container">

                            <div class="form-row">
                                <div class="form-group col-md-2"></div>

                                <div class="form-group col-md-4">
                                    <div class=" text-left">
                                        <label for="exampleFormControlSelect1" class=" text-primary">Select District</label>
                                    </div>
                                    
                                    <asp:DropDownList ID="ddldistrict" runat="server" class=" form-control dropdown-item" data-style="btn btn-link">
                                        <asp:ListItem Text="text1" />
                                        <asp:ListItem Text="text2" />
                                    </asp:DropDownList>

                                    <select class="form-control selectpicker" data-style="btn btn-link" id="exampleFormControlSelect1">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <div class=" text-left">
                                            <label for="exampleFormControlSelect1" class=" text-primary">Select Type of Details</label>
                                    </div>
                                    
                                    <asp:DropDownList ID="ddltype" runat="server" class=" form-control dropdown-item" data-style="btn btn-link">
                                        <asp:ListItem Text="Select Details Type" Value="-1" />
                                        <asp:ListItem Text="Hospital" Value="1" />
                                        <asp:ListItem Text="Oxygen" Value="2" />
                                        <asp:ListItem Text="Blood/Plazma" Value="3" />
                                        <asp:ListItem Text="Doctor" Value="4" />
                                        <asp:ListItem Text="Ambulance" Value="5" />
                                        <asp:ListItem Text="Food Delivery" Value="6" />
                                    </asp:DropDownList>
                                </div>
                                


                                 <div class="form-group col-md-4">
                                <label for="inputPassword4">Password</label>
                                <select class="form-control selectpicker" data-style="btn btn-link" id="ddlTypetoUpdate">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                                <div class="form-group col-md-2"></div>
                            </div>
                            <hr />
                        <div class="form-group">
                            <label for="inputAddress">Address</label>
                            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St"/>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress2">Address 2</label>
                            <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor"/>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">City</label>
                                <input type="text" class="form-control" id="inputCity"/>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="inputState">State</label>
                                <select id="inputState" class="form-control">
                                    <option selected>Choose...</option>
                                    <option>...</option>
                                </select>
                            </div>
                            <div class="form-group col-md-2 ml-auto">
                                <label for="inputZip">Zip</label>
                                <input type="text" class="form-control" id="inputZip"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" value=""/>
                                    Check me out
          <span class="form-check-sign">
              <span class="check"></span>
          </span>
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">submit</button>
                            
                            


                        </div>
                        
                    </div>
                </div>--%>

            </div>
        </div>

    </div>

</asp:Content>
