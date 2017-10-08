<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="BlogPage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <title></title>
    <link href="css/blog.css" rel="stylesheet" />
    <link href="css/styleNew.css" rel="stylesheet" />
</head>
<body>
    <form id="form1">
    <div class="container2">
    <br />
    <br />
        <div class="header5"><h3>Write a Blog</h3></div>
        
    <div class="content2">
    <div class="lable-2">
    <div>Title:
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                            ErrorMessage="Name is required" ControlToValidate="txbxTitle"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txbxTitle" runat="server"></asp:TextBox>
    </div>
    <div>Author:
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                            ErrorMessage="Name is required" ControlToValidate="txbxAuthor"></asp:RequiredFieldValidator>
     <asp:TextBox ID="txbxAuthor" runat="server"></asp:TextBox>
    </div>
    <div>
        Blog:
          <asp:TextBox ID="txbxContent" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
    </div>
    <br />
    <asp:Button ID="Button1" CssClass="submit2" runat="server" OnClick="Button1_Click" Text="Submit" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
  </div>
    </form>
</body>
</html>

</asp:Content>

