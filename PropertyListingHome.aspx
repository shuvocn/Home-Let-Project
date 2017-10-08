<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PropertyListingHome.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!--======= FORM SECTION =========-->
  <div class="container">
        <div class="find-sec">
          <ul class="row">
            
            <!--======= FORM =========-->
            <li class="col-sm-3">
              <label>Choose The City</label>
                   <asp:DropDownList ID="propertyCity" runat="server" CssClass="selectpicker">
                         <asp:ListItem Selected="true" Value="1">Choose City</asp:ListItem>
                         <asp:ListItem>Dhaka</asp:ListItem>
                         <asp:ListItem>Chittagong</asp:ListItem>
                         <asp:ListItem>Rajshahi</asp:ListItem>
                         <asp:ListItem>Rangpur</asp:ListItem>
                         <asp:ListItem>Khulna</asp:ListItem>
                         <asp:ListItem>Sylhet</asp:ListItem>
                         
                  </asp:DropDownList>
            </li>
            
            <!--======= FORM =========-->
            <li class="col-sm-3">
              <label>Location</label>
              <asp:DropDownList ID="propertyArea" runat="server" CssClass="selectpicker">
                         <asp:ListItem Selected="true" Value="1">Choose Area</asp:ListItem>
                          <asp:ListItem>Badda</asp:ListItem>
                         <asp:ListItem>Malibugh</asp:ListItem>
                         <asp:ListItem>Mouchak</asp:ListItem>
                         <asp:ListItem>Farmget</asp:ListItem>
                         <asp:ListItem>Mirpur</asp:ListItem>
                          <asp:ListItem>............................</asp:ListItem>
                         <asp:ListItem>Shaheb Bazar</asp:ListItem>
                         <asp:ListItem>Talaimary</asp:ListItem>
                         <asp:ListItem>Upasahar</asp:ListItem>
                         <asp:ListItem>Shadhur More</asp:ListItem>
                  </asp:DropDownList>
            </li>
            
            <!--======= FORM =========-->
            <li class="col-sm-3">
              <label>Property Status</label>
              <asp:DropDownList ID="propertyType" runat="server" CssClass="selectpicker">
                                    <asp:ListItem Selected="true" Value="1">Choose Property Type</asp:ListItem>
                                    <asp:ListItem>Family</asp:ListItem>
                                    <asp:ListItem>Flat</asp:ListItem>
                                    <asp:ListItem>Apartment</asp:ListItem>
                                    <asp:ListItem>Bachelor</asp:ListItem>
                                    <asp:ListItem>Sublet</asp:ListItem>
                                    <asp:ListItem>Female Mess</asp:ListItem>
                                    <asp:ListItem>Hostel</asp:ListItem>
                                    <asp:ListItem>Office Space</asp:ListItem>
                                    
               </asp:DropDownList>
            </li>
            
            
                <!--======= BUTTON =========-->
                <li class="col-xs-3 search">
                  <asp:Button ID="Button1"  CssClass="btnNew" runat="server"  OnClick="Search_Click" 
                      Text="Search" />
                </li>
          </ul>
        </div>
   </div>

  

<!-- start recent properties -->
<section class="properties">
    <div class="container">
        <div class="divider"></div>
        <div class="row">
        <asp:DataList ID="DataList1" runat="server" Width="952px">
            <ItemTemplate>
                <div class="col-lg-12">
                    <div class="propertyItem">
                        <div class="propertyContent row">
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <a class="propertyType">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("p_type") %>'></asp:Label></a>
                                <asp:Image ID="Image1" runat="server" Height="280px" Width="300px" ImageUrl='<%# Eval ("p_image") %>'></asp:Image>
                            </div>
                            <div class="col-lg-8 rowText" >
                                <p class="price">
                                     <asp:Label ID="Label8" runat="server" Text='<%# Eval("p_price") %>'></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Text="Tk"></asp:Label>
                                </p>
                                <h4>
                                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("p_area") %>'></asp:Label>
                                    
                                </h4>
                                 <br /> 
                                 <p> <asp:Label ID="Label4" runat="server" Text='<%# Eval("p_address") %>'></asp:Label></p>   
                                <br />
                                <p class="description">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("p_description") %>' Width="550px"></asp:Label>
                                </p>
                             
 
                                <table border="1" class="propertyDetails">
                                    <tr>
                                        
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("p_bed") %>'></asp:Label>
                                            Beds</td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("p_bath") %>'></asp:Label>
                                            Baths</td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" 
                                                   CommandArgument='<%# Eval ("p_area") %>' oncommand="Result_Page" >More Details</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        
        
        </asp:DataList>
        </div><!-- end row -->
        <asp:Label ID="Label9" runat="server" Text=" "></asp:Label>
    </div><!-- end container -->
</section>
<!-- end recent properties -->


</asp:Content>

   