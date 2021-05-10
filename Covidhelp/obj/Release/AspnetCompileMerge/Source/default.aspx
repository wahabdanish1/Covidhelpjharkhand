<%@ Page Title="" Language="C#" MasterPageFile="~/CovidHelp.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Covidhelp._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= main.ClientID %>").focus();

        });
    </script>
    <style>
        .btn1
            {
                display:block;
                width:100%
            }
    </style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main" class="main main-raised" runat="server">
        <div class="container">
            <div class="section text-center">

                <h2 class="title">Help Jharkhand</h2>
                <%--<br />

                <h3>Please Select District</h3>--%>
            </div>
        </div>
        <section  class="container">
            <div class="cd-section" >
                <div class="row">
                    <div class="card card-nav-tabs text-center">
                        <div id="district" runat="server" class="card-header card-header-primary font-weight-bold">
                            Select District
                        </div>
                        <div class="card-body">
                            <div class="container">
                               
                                <table class="table" id="District_Section1" runat="server" >
                                    <tr class="row text-center">
                                        
                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="bokaro.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Bokaro</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="chatra.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Chatra</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="deoghar.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Deoghar</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="dumka.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Dumka</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="dhanbad.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Dhanbad</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="EastSinghbhum.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">East Singhbhum</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>


                                </table>

                                 <table class="table">
                                    <tr class="row text-center">
                                        
                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="garhwa.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Garhwa</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="giridih.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Giridih</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="Godda.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Godda</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="gumla.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Gumla</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="hazaribagh.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Hazaribagh</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="jamtara.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Jamtara</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>


                                </table>

                                 <table class="table">
                                    <tr class="row text-center">
                                        
                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="khunti.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Khunti</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="koderma.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Koderma</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="latehar.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Latehar</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="lohardaga.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Lohardaga</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="palamu.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Palamu</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="pakur.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Pakur</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>


                                </table>

                                 <table class="table">
                                    <tr class="row text-center">
                                        
                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="ramgarh.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Ramgarh</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="./Ranchi.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Ranchi</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="sahebganj.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Sahebganj</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="saraikella.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Saraikella</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="simdega.aspx" class="card-link btn-dark">
                                                    <div class="card-body">
                                                        <h4 class="card-title">Simdega</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>

                                        <td colspan="2" class="text-center">
                                            <div class="card card-header-info">
                                                <a href="westsinghbhum.aspx" class="card-link btn-info btn-round">
                                                    <div class="card-body">
                                                        <h4 class="card-title">West Singhbhum</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>


                                </table>


<%-----------------------------------------------------------------------------------------------------------------------------------------%>

                             <%--   <div class="row">
                                    <div class="col-md-2 col-4">
                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn-info btn-round">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-4">
                                        <div class="card card-header-info text-center">
                                            <a href="#" class="card-link btn-info">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-4">
                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn-info btn-round">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="col-md-2 col-4">

                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn-info btn-round">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="col-md-2 col-4">
                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn-info btn-round">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="col-md-2 col-4">

                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn-info btn-round">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-2 col-4">
                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn1 btn-info btn-round">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-4">
                                        <div class="card card-header-info text-center">
                                            <a href="#" class="card-link btn1 btn-info">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-4">
                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn1 btn-info">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="col-md-2 col-4">

                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn1 btn-info">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="col-md-2 col-4">
                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn-info">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="col-md-2 col-4">

                                        <div class="card card-header-info">
                                            <a href="#" class="card-link btn-info">
                                                <div class="card-body">
                                                    <h4 class="card-title">Bokaro</h4>
                                                </div>
                                            </a>
                                        </div>

                                    </div>
                                </div>--%>


<%-----------------------------------------------------------------------------------------------------------------------------------------%>


                                               

                            </div>
                        </div>
                        <div class="card-footer text-muted">
                            Stay Home, Stay Safe
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="space-70"></div>
    </div>

</asp:Content>
