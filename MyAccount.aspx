<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/myAccount.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
<div class="main">
	
      <h2><asp:LinkButton ID="LinkButton1" runat="server" OnClick="Show_Button" >My Profile Details</asp:LinkButton></h2>
		   
		   <div class="lable-2">  
                <div><p class="fMargin">Name</p><asp:TextBox ID="TextBox2" runat="server" type="text" class="input"></asp:TextBox></div><div class="clear"></div>
                <div><p class="fMargin">User Name</p><asp:TextBox ID="TextBox3" runat="server" type="text" class="input" ReadOnly="True"></asp:TextBox></div><div class="clear"></div>
                <div><p class="fMargin">Password</p><asp:TextBox ID="TextBox4" runat="server" type="password" class="input" data-type="password"></asp:TextBox></div><div class="clear"></div>   
                <div><p class="fMargin">Repeat Password</p><asp:TextBox ID="TextBox5" runat="server" type="password" class="input" data-type="password"></asp:TextBox></div><div class="clear"></div>   
		        <div><p class="fMargin">Email</p><asp:TextBox ID="TextBox6" runat="server" type="email" class="input"></asp:TextBox></div><div class="clear"></div>
		        <div><p class="fMargin">Mobile No</p><asp:TextBox ID="TextBox7" runat="server" type="text"  class="input"></asp:TextBox></div><div class="clear"></div>
                
            </div>
 
		   <div class="submit">
			  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" />
		   </div>
		   <div class="clear"> </div>
		
		</div>
        <br />		 
   		<br />
        <br />
        <br />
</body>
</html>


</asp:Content>

