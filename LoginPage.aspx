<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- start main content -->
<section class="properties">
    <div class="container">
        <div class="row">

            <div class="col-lg-4 col-lg-offset-4">
                <h3>LOGIN</h3>
                <div class="divider"></div>
                <p style="font-size:13px;">Don't have an account yet? <a href="SignUpPage.aspx">Register here!</a></p>
                <!-- start login form -->
                <div class="filterContent sidebarWidget">
                    <form method="post" action="#">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="login">Login</label><br/>
                                <asp:TextBox ID="user" runat="server" type="text" class="input"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="pass">Password</label><br/>
                                <asp:TextBox ID="pass" runat="server" type="text" class="input" data-type="password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12Button2 col-sm-6">
                                <div class="formBlock">
                                    <asp:Button class="buttonColor" ID="LoginButton" runat="server" onClick="Login_Click" Text="LOGIN"></asp:Button>
                                </div>
                            </div>
                            <asp:Label ID="error" runat="server" cssClass="signLabel" Visible="false" Text="Incorrect username or password"></asp:Label>
                            <div style="clear:both;"></div>
                        </div><!-- end row -->
                    </form><!-- end form -->
                </div><!-- end login form -->
            </div><!-- end col -->
            
        </div>
    </div><!-- end container -->
</section>
</asp:Content>

