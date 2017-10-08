<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashboardMassage.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link href="css/dashborad.css" rel="stylesheet" type="text/css"/>
    <link href="css/styleNew.css" rel="stylesheet" type="text/css"/>
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
                        <li>Dashboard</li>
            </ul>
            <ul class="navlistNew">
                        <li class="active"><a href="Dashboard.aspx">New Request</a></li>
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
                <h2 class="dass_title">Massage</h2>
                <!-- start my properties list -->
                <div class="dmleft">
                                      
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table class="myProperties">
                               
                                   <div class="col-lg-12">
                                        <div class="propertyItem">
                                            <div class="propertyContent row">
                                                <div class="col-lg-4 col-md-4 col-sm-4">
                                                
                                                </div>
                                                <div class="col-lg-8 rowText">
                                                
                                                <h4><asp:Label ID="Label1" runat="server" Text='<%# Eval("c_name") %>'></asp:Label></h4>
                                                <br />
                                                <br />
                                                <p><asp:Label ID="Label4" runat="server" Text='<%# Eval("c_email") %>'></asp:Label></p>
                                                <br />
                                                <p><asp:Label ID="Label5" runat="server" Text='<%# Eval("c_massage") %>'></asp:Label></p> 
                                                
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                
                            </table>
                        </ItemTemplate>
                    
                    </asp:DataList>
            </div>
            <!-- end my properties list -->
        </div>
    
    </div>

    </div>
    </form>
</body>
</html>
