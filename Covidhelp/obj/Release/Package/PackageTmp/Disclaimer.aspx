<%@ Page Title="" Language="C#" MasterPageFile="~/CovidHelp.Master" AutoEventWireup="true" CodeBehind="Disclaimer.aspx.cs" Inherits="Covidhelp.Disclaimer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="main_Section" class="main main-raised" tabindex="0" runat="server">
                <div class="container">
                    <div class="section text-center">
                        <h2 class="title"> Disclaimer</h2>
         <br/>
                        <section>
                            <div class="card card-nav-tabs text-center">
                                <div class="card-header card-header-primary">
                                    <a class="title">Please Read Carefully</a>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-1"></div>
                                        <div class="col-sm-10 col-8 text-justify">


                                            <li>
                                                <asp:Label Text="We are not the State/Central government authorized portal.​" runat="server" />
                                            </li>
                                            <li>
                                                <asp:Label Text="हम राज्य / केंद्र सरकार के अधिकृत पोर्टल नहीं हैं।​" runat="server" Font-Bold="true" ForeColor="Blue" />
                                            </li>
                                            <hr />
                                            <li>
                                                <asp:Label Text="We are not raising any fund in the name of Covid Bihar or any other body.​" runat="server" />
                                            </li>
                                            <li>
                                                <asp:Label Text="हम Covid Help Jharkhand या किसी अन्य निकाय के नाम पर कोई फंड नहीं जुटा रहे हैं।​" runat="server" Font-Bold="true" ForeColor="Blue" />
                                            </li>
                                            <hr />
                                            <li>
                                                <asp:Label Text="Please stay away from any rumours related to Covid Help Jharkhand" runat="server" />
                                            </li>
                                            <li>
                                                <asp:Label Text="कृपया Covid Help Jharkhand से संबंधित किसी भी अफ़वाहों से दूर रहें।" runat="server" Font-Bold="true" ForeColor="Blue"/>
                                            </li>
                                            <hr />
                                            <li>
                                                <asp:Label Text="Contact us at covidhelpjharkhand@gmail.com for any information regarding website." runat="server" />
                                            </li>
                                            <li>
                                                <asp:Label Text="वेबसाइट से संबंधित किसी भी जानकारी के लिए covidhelpjharkhand@gmail.com पर संपर्क करें।" runat="server" Font-Bold="true" ForeColor="Blue"/>
                                            </li>
                                            <hr />

                                            <p class="text-justify">
                                                This is a crowd sourced project in order to help our fellow citizens get immediate access to COVID related help. The content aggregated on this site is done in good faith to help people who do not have a handy access to such information. While we are trying our level best to add content only from verified resources, and re-verify the information from time to time, we can not unfortunately guarantee the reliability and authenticity of the content. All the information presented here is publicly available and may have been collected from blogs, social media sites, WhatsApp groups, and other sources on the internet. This is a non-profit initiative with the intention to give potential sources of help to those who require it by bringing such information into a single platform.
                                            </p>
                                            <p class="text-justify">
                                                A ‘Verified’ entry means that the number listed was called and verified by a volunteer to confirm supply of the associated product/service. We do not endorse any listing, and cannot guarantee the quality of product/service they provide. We are calling new listings but what is marked as “Available” at the time of posting may not be available at any future time or date.

                                            </p>
                                            <p class="text-justify" style="color:blue">
                                                * We shall not be held liable for any loss that you may incur by relying on any information/resource available on this website. As our role is of just being an aggregator of publicly available content, we undertake no liability for the information provided.
By accessing this website, YOU AGREE that you shall not hold responsible the team collecting such information for any information/resource that you may use or refer to in any manner whatsoever.
                                            </p>
                                            <p class="text-justify" style="color:blue">
                                                As a user of this website, you accept that you are responsible for carrying out your own due diligence – including the availability/authenticity of listed products/services – before acting on any information on our website.
                                            </p>
                                            <p class="text-justify" style="color:blue">
                                                By entering this website (by pressing the ‘AGREE and CONTINUE’ button below), you accept all the above mentioned terms and conditions.
                                            </p>
                                            
                                        </div>
                                        <div class="col-2"></div>
                                    </div>
                                    <div class="space-50"></div>
                                    <div class="row">
                                        <div class="col-sm-8 mx-auto text-center">
                                            <button id="btn_agree" runat="server" onserverclick="btnagree_Click" class="btn btn-primary btn-round">
                                                <i class="material-icons">check_circle</i> Agree And Continue
                                            </button>
                                        </div>
                                    </div>

                                </div>
                                <div class="space-50"></div>

                            </div>
                        </section>
                        </div>
                    <div class="space-70"></div>
                </div>
            </div>

    

</asp:Content>


