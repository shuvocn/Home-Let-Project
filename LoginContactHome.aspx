<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="LoginContactHome.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start main content -->
<section class="properties">
    <div class="container">
        <div class="row">
        
            <!-- start left column -->
            <div class="col-lg-4 col-md-4">
                <div><iframe src="https://www.google.com/maps/d/embed?mid=1yUulCS3kf_labAEhSNIEiylC_3w&hl=en_US" width="380" height="358"></iframe></div>
                <br/>
                <p>Get notified about the latest properties in our marketplace.</p> 
                <br/>
            </div><!-- end left column -->

            <!-- start contact form -->
            <div class="col-lg-8 col-md-8">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <h3>Contact Us</h3>
                        <div class="divider"></div>
                        <ul class="contactDetails">
                            <li><img src="images/icon-mail.png" alt="" />shuvoahmed2050@gmail.com</li>
                            <li><img src="images/icon-phone.png" alt="" />+8801731913405</li>
                            <li><img src="images/icon-pin.png" alt="" />365/14, Sawrapara, Mirpur-10</li>
                        </ul>
                                                                        <form method="post" action="http://rypepixel.com/easy-living/contact.php" id="contact-us">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="formBlock">
                                        <label for="contactName">Your Name</label><br/>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is required" ControlToValidate="LoginContactName"></asp:RequiredFieldValidator>
                                              <asp:TextBox ID="LoginContactName" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="formBlock">
                                        <label for="email">Your Email</label><br/>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="LoginContactEmail"></asp:RequiredFieldValidator>
                                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must enter the valid Email Id" ControlToValidate="LoginContactEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                                  
                                              <asp:TextBox ID="LoginContactEmail" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="formBlock">
                                        <label for="message">Your Message</label><br/>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is required" ControlToValidate="LoginContactMassage"></asp:RequiredFieldValidator>
                                              <textarea ID="LoginContactMassage" runat="server" rows="2" cols="92" ></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-lg-offset-9 col-md-4 col-md-offset-8 col-sm-4 col-sm-offset-8">
                                    <div class="formBlock">
                                        <br/><asp:Button ID="LoginContactButton" runat="server" CssClass="buttonColor" OnClick="Send_Click" Text="SEND"></asp:Button>>
                                    </div>
                                </div>
                            </div><!-- end row -->
                        </form><!-- end form -->
                                            </div><!-- col -->
                </div><!-- end row -->
            </div><!-- end contact form -->

        </div><!-- end row -->
    </div><!-- end container -->
</section>
<!-- end main content -->


</asp:Content>

