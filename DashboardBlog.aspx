<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashboardBlog.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link href="css/dashborad.css" rel="stylesheet" type="text/css"/>
    <link href="css/styleNew.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .container
        {
            width: 948px;
        }
        .style21
        {
            width: 50px;
        }
        .style22
        {
            width: 150px;
        }
        .style23
        {
            width: 120px;
        }
         .style24
        {
            width: 500px;
        }
         .style25
        {
            width: 200px;
        }
          .style26
        {
            width: 80px;
        }
            .style27
        {
            width: 50px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="headwrap">
            <h1 class="dashCenter">Dashboard</h1>
        </div>
        <div class="wrap">
        <div class="fleft">
             <ul class="navlist">
                        <li>Menu</li>
            </ul>
            <ul class="navlistNew">
                        <li class="active"><a href="Dashboard.aspx">All Post</a></li>
            </ul>
            <ul class="navlistMass">
                        <li><a href="DashboardMassage.aspx">Massage</a></li>
            </ul>
            <ul class="navlistBlog">
                        <li><a href="DashboardUserList.aspx">User List</a></li>
            </ul>
            <ul class="navlistBlog">
                        <li>
                            <asp:LinkButton ID="LinkButton1" runat="server">Blog</asp:LinkButton>
                        </li>
            </ul>
            <ul class="navlistBlog">
                        <li><a href="HomePage.aspx">Logout</a></li>
            </ul>
        </div>
       <!-- start my Blog list -->
  <div>
            <div>
               <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                    ForeColor="#333333" Width="996px">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#E3EAEB" />
                        <ItemTemplate>
                            <table>
                               
 
                                             <tr>
                                                <td class="style21"><asp:Label ID="Label2" runat="server" Text='<%# Eval("b_id") %>'></asp:Label></td>
                                                <td class="style22"><asp:Label ID="Label1" runat="server" Text='<%# Eval("b_title") %>'></asp:Label></td>
                                                <td class="style23"><asp:Label ID="Label3" runat="server" Text='<%# Eval("b_author") %>'></asp:Label></td>
                                                <td class="style24"><asp:Label ID="Label4" runat="server" Text='<%# Eval("b_content") %>'></asp:Label></td>
                                                <td class="style25"><asp:Label ID="Label5" runat="server" Text='<%# Eval("b_date") %>'></asp:Label></td> 
                                                <td class="style26"><asp:LinkButton ID="LinkButton2" CommandArgument='<%# Eval ("b_id") %>' oncommand="LinkButton1_Command2" runat="server">Approve</asp:LinkButton></td> 
                                                <td class="style27"><asp:LinkButton ID="LinkButton3" CommandArgument='<%# Eval ("b_id") %>' oncommand="LinkButton1_Command" runat="server">Delete</asp:LinkButton></td> 
                                             </tr>
                                
                            </table>
                        </ItemTemplate>
                    
                        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    
                    </asp:DataList>
                </div>
            </div>
    
    </div>

    </div>
    </form>
</body>
</html>
