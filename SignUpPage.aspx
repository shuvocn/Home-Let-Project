<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUpPage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- start main content -->
<section class="properties">
    <div class="container">
        <div class="row">

            <div class="col-lg-4 col-lg-offset-4">
                <h3>REGISTER</h3>
                <div class="divider"></div>
                <p style="font-size:13px;">Already have an account? <a href="LoginPage.aspx">Login here!</a></p>
                <!-- start login form -->
                <div class="filterContent sidebarWidget">
                    <form method="post" action="#">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="email">Name</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ErrorMessage="Name is required" ControlToValidate="name"></asp:RequiredFieldValidator>
                                 <asp:TextBox ID="name" runat="server" type="text" class="input"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="pass">Username</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUser" runat="server" 
                                                            ErrorMessage="User Name is required" ControlToValidate="username"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="username" runat="server" type="text" class="input"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="confirmPass">Password</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" 
                                                            ErrorMessage="Password is required" ControlToValidate="password"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="password" runat="server" type="password" class="input" data-type="password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="confirmPass">Confirm Password</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorRePass" runat="server" 
                                   ErrorMessage="Confirm Password is required" ControlToValidate="repeat"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                   ErrorMessage="Dosn't match" ControlToCompare="password" 
                                   ControlToValidate="repeat"></asp:CompareValidator>
                                <asp:TextBox ID="repeat" runat="server" type="password" class="input" 
                                   data-type="password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="confirmPass">Email</label><br/>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
                                      ErrorMessage="Email is required" ControlToValidate="email"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                      ErrorMessage="You must enter the valid Email Id" ControlToValidate="email" 
                                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 <asp:TextBox ID="email" runat="server" type="text" class="input"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="confirmPass">Mobile Number</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Mobile number is required" ControlToValidate="mobile"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="mobile" runat="server" type="number" class="input" data-type="number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                    <asp:Button class="buttonColor" ID="save" runat="server" Text="REGISTER" onclick="Register_Click"></asp:Button>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                    <asp:Label ID="Succesfull" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div style="clear:both;"></div>
                        </div><!-- end row -->
                    </form><!-- end form -->
                </div><!-- end login form -->
            </div><!-- end col -->
            
        </div>
    </div><!-- end container -->
</section>
<!-- end main content -->
</asp:Content>

