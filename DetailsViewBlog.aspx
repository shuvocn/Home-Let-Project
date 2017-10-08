<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="DetailsViewBlog.aspx.cs" Inherits="Default2" %>

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
     
    <div class="content4">
        <div>
            <div>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="false" Width="100%" GridLines="None">
                <Fields>
                <asp:TemplateField ShowHeader="false">
                <ItemTemplate>
                <tr>
                <div>
                <h2>
                <asp:Label ID="lblBlogPostTitle" runat="server" Text='<%#Eval("a_title") %>'></asp:Label></h2>
                <div>
                <span>
                <asp:Label ID="lblAuthor" runat="server" Text='<%#Eval("a_author") %>'></asp:Label></span>
                <span>
                <asp:Label ID="lblBlogDate" runat="server" Text='<%#Eval("a_date") %>'></asp:Label></span>
                </div>
                <div style="text-align: justify;">
                <p>
                <br />
                <asp:Label ID="lblMessage" runat="server" Text='<%#Eval("a_content") %>'></asp:Label></p>
                </div>
                </div>
                </tr>
                </ItemTemplate>
                </asp:TemplateField>
                </Fields>
                </asp:DetailsView>
                </div>
                <div>
                <hr />
                <br />
                <asp:Label ID="LabelNoComment" runat="server" Text="No comments yet." Visible="false"></asp:Label>
                </div>
                <div id="comment_form">
                 <br />
                 <br />
                 <br />
                <h3>Post a comment</h3>
                <br />
                <label>Name</label>
                 <br />
                <asp:TextBox ID="txbxcommentauthor" runat="server" MaxLength="30" Width="900px"></asp:TextBox>
                <br />
                <label>Comment</label>
                <br />
                <asp:TextBox ID="txbxcomment" runat="server" TextMode="MultiLine" Width="900px"></asp:TextBox>
                 <br />
                <asp:Button ID="Button1" runat="server" CssClass="submit2" Text="Submit" OnClick="Button1_Click" Width="900px"/>
                </div>

                <br />
                comments:
                <br />
                <br />
                <asp:GridView ID="GridViewcomment" runat="server" AutoGenerateColumns="false" ShowHeader="false" GridLines="None" Width="100%" CellSpacing="10">
                <Columns>
                <asp:TemplateField>
                <ItemTemplate>
                <tr>
                <td>
                <div>
                <asp:Label ID="lblauthor" runat="server" Text='<%#Eval("c_name") %>' Font-Bold="true" Font-Italic="true" Font-Size="Large"></asp:Label>
                <asp:Label ID="LabelCommentDate" runat="server" Text='<%# Eval("c_date") %>' Font-Size="Smaller"></asp:Label>
                </div>
                <div>
                <p>
                <asp:Label ID="Lblcomment" runat="server" Text='<%#Eval("c_comment") %>'></asp:Label></p>
                </div>
                </td>
                </tr>
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
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

