<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="SubmitProperty.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start my properties list -->
<div>
<section class="properties">
    <div class="container">
        <div class="row">

            <!-- start property info -->
            <div class="col-lg-4 col-md-4">
                <h3>PROPERTY INFO</h3>
                <div class="divider"></div>
                <div class="sidebarWidget submission">
                    <form method="post" action="#">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="image">Image</label><br/>
                                <asp:FileUpload ID="FileUploadImages" runat="server"></asp:FileUpload>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="address">Address</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Address Required" ControlToValidate="propertyAddress" ></asp:RequiredFieldValidator>
                                <asp:TextBox ID="propertyAddress" runat="server" type="text" class="input"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="city">Area</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Area Required" ControlToValidate="propertyArea" ></asp:RequiredFieldValidator>
                                <asp:TextBox ID="propertyArea" runat="server" type="text" class="input"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="city">City</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="City Required" ControlToValidate="city" ></asp:RequiredFieldValidator>
                                <asp:TextBox ID="city" runat="server" type="text" class="input"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="description">Description</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Description Required" ControlToValidate="propertyDescription" ></asp:RequiredFieldValidator>
                                <%--<textarea name="description" id="propertyDescription" class="formDropdown" rows="2" cols="20"></textarea><br/><br/>--%>
                                <textarea ID="propertyDescription" runat="server" rows="2" cols="92" class="formdropdown" type="text"></textarea><br/><br/>
                                </div>
                            </div>
                            <div style="clear:both;"></div>

                        </div><!-- end row -->
                    </form><!-- end form -->
                </div>
            </div>
            <!-- end property info -->

            <!-- start amenities -->
            <div class="col-lg-4 col-md-4">
                <h3>Property Details</h3>
                <div class="divider"></div>
                <div class="sidebarWidget submission">
                    
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div class="amenityCheckList formBlock">
                                    <label>Details</label><br/><br/>
                                    <div class="row">
                                    <div class="listPadding">
                                    <asp:CheckBoxList ID="CheckBoxListDetails" runat="server">
                                    <asp:ListItem Text="Air Conditioning" Value="air"></asp:ListItem>
                                    <asp:ListItem Text="Balcony" Value="balcony"></asp:ListItem>
                                    <asp:ListItem Text="Bedding" Value="bedding"></asp:ListItem>
                                    <asp:ListItem Text="Cable TV" Value="cable"></asp:ListItem>
                                    <asp:ListItem Text="Coffee Pot" Value="coffee"></asp:ListItem>
                                    <asp:ListItem Text="Dishwasher" Value="dishwasher"></asp:ListItem>
                                    <asp:ListItem Text="Internet" Value="internet"></asp:ListItem>
                                    <asp:ListItem Text="Heating" Value="heating"></asp:ListItem>
                                    <asp:ListItem Text="Parking" Value="parking"></asp:ListItem>
                                    <asp:ListItem Text="Fridge" Value="fridge"></asp:ListItem>
                                    <asp:ListItem Text="Grill" Value="grill"></asp:ListItem>
                                    </asp:CheckBoxList>
                                    </div>
                                    
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label class="dateSpace">Bed Room</label><br/>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address Required" ControlToValidate="bedRoom" ></asp:RequiredFieldValidator>
                                <asp:TextBox ID="bedRoom" runat="server" type="text" class="input"></asp:TextBox>
                             </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label class="dateSpace">Bath Room</label><br/>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Address Required" ControlToValidate="bathRoom" ></asp:RequiredFieldValidator>
                                <asp:TextBox ID="bathRoom" runat="server" type="text" class="input"></asp:TextBox>
                             </div>
                            </div>
                            <div style="clear:both;"></div>
                        </div><!-- end row -->
                    
            </div>
            <!-- end amenities -->

            <!-- start additional info -->
            <div class="col-lg-4 col-md-4">
                <h3>ADDITIONAL INFO</h3>
                <div class="divider"></div>
                <div class="sidebarWidget submission">
                    
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="price">Price (Tk)</label><br/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Price Required" ControlToValidate="propertyPrice" ></asp:RequiredFieldValidator>
                                <asp:TextBox ID="propertyPrice" runat="server" type="number" class="input" data-type="number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="PropertyType">Property Type</label><br/>
                                <asp:DropDownList ID="propertyType" runat="server" CssClass="formDropdown">
                                    <asp:ListItem Selected="true" Value="1">Family</asp:ListItem>
                                    <asp:ListItem>Flat</asp:ListItem>
                                    <asp:ListItem>Apartment</asp:ListItem>
                                    <asp:ListItem>Bachelor</asp:ListItem>
                                    <asp:ListItem>Sublet</asp:ListItem>
                                    <asp:ListItem>Female Mess</asp:ListItem>
                                    <asp:ListItem>Hostel</asp:ListItem>
                                    <asp:ListItem>Office Space</asp:ListItem>
                                    
                                </asp:DropDownList>


                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="contractType">Contract Type</label><br/>
                                <asp:DropDownList ID="DropDownListContract" runat="server" CssClass="formDropdown">
                                    <asp:ListItem Selected="true">For Rent</asp:ListItem>
                                    <%--<asp:ListItem>For Sale</asp:ListItem>--%>
                                </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="contractType">Date Created</label><br/>
                                    <asp:Label ID="Date" runat="server"></asp:Label>
                                </div>
                            </div>
                            
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <br />
                                <label for="contractType">User Name</label><br/>
                                    <asp:Label ID="username" runat="server" Text=""></asp:Label>
                                    <br />
                                <label for="contractType">Name</label><br/>
                                    <asp:Label ID="name" runat="server" Text=""></asp:Label>
                                    <br />
                                <label for="contractType">Email</label><br/>
                                    <asp:Label ID="email" runat="server" Text=""></asp:Label>
                                    <br />
                                <label for="contractType">Mobile Number</label><br/>
                                    <asp:Label ID="mobile" runat="server" Text=""></asp:Label>
                                </div>
                                </div>
                            <div style="clear:both;"></div>
                        </div><!-- end row -->
                    
            </div>
            <!-- end additional info -->

            <div class="col-lg-4 col-lg-offset-4 col-md-4">
                <div class="formBlock">
                    <asp:Button ID="Button1" class="buttonColor" OnClick="Submit_Click" runat="server" Text="Submit"></asp:Button>
                </div>
            </div>

        </div><!-- end row -->
    </div><!-- end container -->
</section>
<!-- end my properties list -->
</div>
</asp:Content>

