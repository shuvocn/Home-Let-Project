<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="ViewBlog.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="css/blog.css" rel="stylesheet" />
    <link href="css/styleNew.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1">
    <div class="container2">
    <br />
    <br />
        <div class="header3">
            <asp:Button ID="Button2" CssClass="buttonGrey" runat="server" Text="Create New Blog" PostBackUrl="~/BlogPage.aspx" />
        </div>
        <br />
        <br />
         <br />
          <br />
         <br />
    <div class="content4">
        
        <div>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                    class="gridview" ShowHeader="false" GridLines="None" Width="951px">
                <Columns>
                <asp:TemplateField ShowHeader="false">
                <ItemTemplate>
                
                <tr>
                <td>
                <div class="col-lg-12">
                   <div class="propertyItem">
                   <div class="propertyContent row">
                 <div class="col-lg-4 col-md-4 col-sm-4">
                <div class="BlogHead">
                <h2><a href='<%# Eval("a_id", "DetailsViewBlog.aspx?a_id={0}") %>' class="BlogHead">
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("a_title") %>'></asp:Label></a></h2>
    
                </div>
                <div class="post_meta">
                    <span class="post_author blackLink nocursor"><asp:Label ID="Label2" runat="server" Text='<%#Eval("a_author") %>'></asp:Label></span>
                    <span class="date blackLink nocursor"><asp:Label ID="Label11" runat="server" Text='<%#Eval("a_date") %>'></asp:Label></span>
                </div>
                <br />
                <div id="blbodythumb" style="text-align:justify;">
                <p><asp:Label ID="Label100" runat="server" Text='<%#Eval("a_content") %>' ></asp:Label></p></div><hr class="style-one" />
                </div>
               </div>
               </div>
               </div>
                </td>
                </tr>
                  </div>
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                No data
                </EmptyDataTemplate>
                </asp:GridView>
                </div>
            </div>
   </div>
 
    </form>
    <br />
        <br />
        <br />
         <br />
        <br />
        <br />
         <br />
        <br />
         <br />
        <br />
        <br />

</body>
</html>

</asp:Content>

