<%@ Page Title="" Language="C#" MasterPageFile="~/CovidHelp.Master" AutoEventWireup="true" CodeBehind="deoghar.aspx.cs" Inherits="Covidhelp.deoghar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main main-raised">
        <div class="section section-basic">
            <div class="container">
                <div id="contentAreas" class="cd-section text-center">
                    <div class="row ">
                        <div class="col-2"></div>
                        <div class="col-8">
                            <h2>Deoghar</h2>
                        </div>
                        <div class="col-2 text-right">
                            <a href="default.aspx" class="btn btn-primary btn-fab btn-fab-mini btn-round">
                                <i class="material-icons">home</i>
                            </a>
                        </div>
                    </div>

                    <!-- Tabs with icons on Card -->
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
                                    <div class="table-responsive">
                                        <asp:GridView ID="GvHospital" runat="server" AutoGenerateColumns="false" class="table">
                                            <HeaderStyle CssClass="text-center" />
                                            <RowStyle CssClass="text-center" />
                                            <Columns>

                                                <asp:TemplateField HeaderText="Hospital Name" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Hospital_Name")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Hospital Phone" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Hospital_Phone_no")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Incident Commander" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Incident_Commander_No")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <%--<asp:TemplateField HeaderText="Total Bed" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Total_Bed")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>

                                                <asp:TemplateField HeaderText="Available Bed" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Available_Bed")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="ICU Bed" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("ICU_Bed")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Oxygen Bed" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Oxy_Bed")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Normal Bed" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Normal_Bed")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Updated Date" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Updated_Date")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>

                                        </asp:GridView>
                                        <div class="space-50">
                                            <asp:Label ID="lblNoHospital" Text="Page is Under Maintainance!" runat="server" ForeColor="Red" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Oxygen">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GvOxygen" runat="server" AutoGenerateColumns="false" class="table">
                                            <HeaderStyle CssClass="text-center" />
                                            <RowStyle CssClass="text-center" />
                                            <Columns>

                                                <asp:TemplateField HeaderText="Organization Name" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Organization_Name")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Contact Person" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Contact_Person")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Phone_no" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Phone_no")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Updated Dated" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Updated_Dated")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>

                                        </asp:GridView>
                                        <div class="space-50">
                                        <asp:Label ID="lblNoOxy" Text="" runat="server" ForeColor="Red" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Plazma">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GvPlazma" runat="server" AutoGenerateColumns="false" class="table">
                                            <HeaderStyle CssClass="text-center" />
                                            <RowStyle CssClass="text-center" />
                                            <Columns>

                                                <asp:TemplateField HeaderText="Blood Group" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Blood_group")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Donor Name" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Contact_Person")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Phone_no" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Phone_no")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="City" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("city")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Updated Dated" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Updated_Date")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                            </Columns>

                                        </asp:GridView>

                                        <div class="space-50">
                                             <asp:Label ID="lblNoPlazma" Text="" runat="server" ForeColor="Red" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Doctor">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GvDoctor" runat="server" AutoGenerateColumns="false" class="table">
                                            <HeaderStyle CssClass="text-center" />
                                            <RowStyle CssClass="text-center" />
                                            <Columns>

                                                <asp:TemplateField HeaderText="Hospital Name" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Hospital_Name")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Doctor Name" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Doctor_Name")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Phone no" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Phone_no")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Updated Dated" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Updated_Date")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                            </Columns>

                                        </asp:GridView>

                                        <div class="space-50">
                                            <asp:Label ID="lblNoDoctor" Text="" runat="server" ForeColor="Red" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Ambulance">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GvAmbulance" runat="server" AutoGenerateColumns="false" class="table">
                                            <HeaderStyle CssClass="text-center" />
                                            <RowStyle CssClass="text-center" />
                                            <Columns>

                                                <asp:TemplateField HeaderText="Hospital Name" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Hospital_Name")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Contact Person" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Contact_Person")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Phone_no" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Phone_no")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Updated Dated" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Updated_Date")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>

                                        </asp:GridView>

                                        <div class="space-50">
                                            <asp:Label ID="lblAmbulance" Text="" runat="server" ForeColor="Red" />
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="Food">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GvFood" runat="server" AutoGenerateColumns="false" class="table">
                                            <HeaderStyle CssClass="text-center" />
                                            <RowStyle CssClass="text-center" />
                                            <Columns>

                                                <asp:TemplateField HeaderText="Organization Name" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Organization_Name")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Contact Person" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Contact_Person")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Phone_no" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Phone_no")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Updated Dated" HeaderStyle-CssClass="text-center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Updated_Date")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>

                                        </asp:GridView>

                                        <div class="space-50">
                                            <asp:Label ID="lblNoFood" Text="" runat="server" ForeColor="Red" />
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                    <!-- End Tabs with icons on Card -->

                </div>
            </div>
        </div>
    </div>

</asp:Content>
