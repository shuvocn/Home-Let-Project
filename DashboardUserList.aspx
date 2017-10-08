<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashboardUserList.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link href="css/dashborad.css" rel="stylesheet" type="text/css"/>
    <link href="css/styleNew.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .style1
        {
            width: 27%;
        }
        .style2
        {
            width: 29%;
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
                        <li><a href="DashboardBlog.aspx">Blog</a></li>
            </ul>
            <ul class="navlistBlog">
                        <li><a href="HomePage.aspx">Logout</a></li>
            </ul>
        </div>
        <div class="fright">
                <h2 class="dass_title">Request</h2>
                <!-- start my properties list -->
                <div class="dmleft">
                 <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                        EnableModelValidation="True" GridLines="None" ForeColor="#333333" 
                        AutoGenerateColumns="False" Width="100%"
                         OnRowDeleting="deleting" >

                        <AlternatingRowStyle BackColor="White"/>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />

                        <Columns>  
                                <asp:TemplateField HeaderText="Id">
                                        <ItemTemplate>
                                            <asp:Label ID="Id" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Address" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                        </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="User Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Area" runat="server" Text='<%# Eval("user_name") %>'></asp:Label>
                                        </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Password">
                                        <ItemTemplate>
                                            <asp:Label ID="City" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                                        </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Repeat Password">
                                        <ItemTemplate>
                                            <asp:Label ID="Description" runat="server" Text='<%# Eval("repeat_pass") %>'></asp:Label>
                                        </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="Details" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Mobile Number">
                                        <ItemTemplate>
                                            <asp:Label ID="Price" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                                        </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:CommandField HeaderText="Deletion" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
            </div>
            <!-- end my properties list -->
        </div>
    
    </div>

    </div>
    </form>
</body>
</html>
