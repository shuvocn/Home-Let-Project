<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="MyProperties.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 610px;
        }
        .style10
        {
            width: 174px;
        }
        .style15
        {
            width: 120px;
        }
        .style23
        {
            width: 168px;
        }
        .style25
        {
            width: 182px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start my properties list -->
<section class="genericSection">
    <div class="container">
        <a style="float:right; margin-top:-7px;" href="SubmitProperty.aspx" class="buttonGrey">+ Submit New Property</a>
        <h3>MY PROPERTIES</h3>
        <div class="divider"></div>
       
       <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
            Width="1131px">
           <AlternatingItemStyle BackColor="White" />
           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <HeaderTemplate>
               <table class="nav-justified">
                   <tr>
                   <td class="style">
                           <asp:Label ID="Label14" runat="server" Text="Image"></asp:Label></td>
                       <td class="style10">
                           <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
                       </td>
                       <td class="style25">
                           <asp:Label ID="Label11" runat="server" Text="Type"></asp:Label></td>
                       <td class="style10">
                           <asp:Label ID="Label12" runat="server" Text="Price"></asp:Label></td>
                       <td class="style23">
                          <asp:Label ID="Label13" runat="server" Text="Date"></asp:Label>;</td>
                       
                       <td>
                           &nbsp;</td>
                   </tr>
               </table>
           </HeaderTemplate>
           <ItemStyle BackColor="#EFF3FB" />
           <ItemTemplate>

                   <table class="nav-justified">
                   <tr>
                       <td class="style9">
                           <asp:Image ID="Image1" Width="200px" Height="150px" runat="server" ImageUrl='<%# Eval("p_image") %>' />
                       </td>
                       <td class="style9">
                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("p_address") %>'></asp:Label>
                       </td>
                       <td class="style25">
                           <asp:Label ID="Label2" runat="server" Text='<%# Eval("p_type") %>'></asp:Label></td>
                       <td class="style10">
                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("p_price") %>'></asp:Label></td>
                       <td class="style23">
                           <asp:Label ID="Label4" runat="server" Text='<%# Eval("p_date") %>'></asp:Label></td>
                       <td class="style15">
                          <asp:LinkButton ID="LinkButton1" runat="server" 
                               CommandArgument='<%# Eval ("p_id") %>' oncommand="LinkButton1_Command" >Edit</asp:LinkButton>
                       </td>
                       <td>
                           <asp:LinkButton ID="LinkButton2" runat="server" 
                               CommandArgument='<%# Eval ("p_id") %>' oncommand="LinkButton2_Command1">Delete</asp:LinkButton>
                      </td>
                   </tr>
               </table>
               
           </ItemTemplate>
           <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
       
       </asp:DataList>
                
          
    </div><!-- end container -->
</section>
<!-- end my properties list -->

</asp:Content>

