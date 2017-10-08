<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchPropertyResult.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- start main content section -->
<section class="properties">
    <div class="container">
    	
        <div class="row">
        
           
            <!-- start content -->
            <div class="col-lg-9 col-md-9">
                <div class="gallery">
                    <ul class="bxslider2">
                      <asp:Image ID="ImageNew" runat="server" Width="400px" Height="400px"></asp:Image>
                    </ul>

                </div>
                <br />
                <div class="row">
                    <div class="col-lg-4">
                        <div class="overview">
                        <h4>OVERVIEW</h4>
                        <ul class="overviewList">
                            <li>City <span><asp:Label ID="Label5" runat="server" Text=""></asp:Label></span></li>
                            <li>Area <span><asp:Label ID="Label6" runat="server" Text=""></asp:Label></span></li>
                            <li>Property Type <span><asp:Label ID="Label7" runat="server" Text=""></asp:Label></span></li>
                            <li>Contract Type<span><asp:Label ID="Label14" runat="server" Text=""></asp:Label></span></li>
                            <li>Bedrooms <span><asp:Label ID="Label12" runat="server" Text=""></asp:Label></span></li>
                            <li>Bathrooms <span><asp:Label ID="Label13" runat="server" Text=""></asp:Label></span></li>
                        </ul>
                        </div>
                       
                    </div>
                    <br />
                    <div class="col-lg-8">
                        <p class="price" style="float:right;"><asp:Label ID="Label11" runat="server" Text=""></asp:Label></p>
                        
                        <h1><asp:Label ID="Label8" runat="server" Text=""></asp:Label></h1>
                        <br />
                        <p><asp:Label ID="Label9" runat="server" Text=""></asp:Label></p>
                        <br />
                        <br />
                        <br />
                        <h4>GENERAL AMENTITIES</h4>
                        <div class="divider thin"></div>
                        <table class="amentitiesTable">
                            <tr>
                                <td><asp:Label ID="Label15" runat="server" Text=""></asp:Label></td>
                               
                            </tr>
                        </table><br/>
                    </div><!-- end col -->
                </div><!-- end row -->

            </div><!-- end content -->
        
            <!-- start sidebar -->
            <div class="col-lg-3 col-md-3">
                <!-- start quick search widget -->
                <h3>Contact Owner</h3>
                <div class="divider"></div>
                <div class="filterContent sidebarWidget">
                    <form method="post" action="#">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                                 <br/>
                               <strong><asp:Label ID="Label10" runat="server" Text=""></asp:Label></strong>
                               <br/>
                                <br/>
                                </div>
                            </div>
                            
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                                 <br/>
                                <strong><asp:Label ID="Label16" runat="server" Text=""></asp:Label></strong>
                             <br/>
                              <br/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <asp:Label ID="Label19" runat="server" Text="Phone Number:"></asp:Label>
                                <br/>
                                <strong><asp:Label ID="Label20" runat="server" Text=""></asp:Label></strong>
                                </div>
                            </div>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            
                            <%--<div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                    <asp:Button ID="Button1" runat="server" Text="Contact" CssClass="buttonColor" style="margin-top:24px;" ></asp:Button>
                                </div>
                            </div>--%>
                            <div style="clear:both;"></div>
                        </div><!-- end row -->
                    </form><!-- end form -->
                </div><!-- end quick search widget -->

                

            </div><!-- end col -->
             
        </div><!-- end row -->

    </div><!-- end container -->
</section>
<!-- end main content -->


<!-- JavaScript file links -->
<script src="js/jquery.js"></script>			<!-- Jquery -->
<script src="js/bootstrap.min.js"></script>  <!-- bootstrap 3.0 -->
<script src="js/respond.js"></script>
<script src="js/jquery.bxslider.min.js"></script>           <!-- bxslider -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAqb3fT3SbMSDMggMEK7fJOIkvamccLrjA&amp;sensor=false"></script><!-- google maps -->
<script type="text/javascript" src="js/map-one-pin.js"></script> <!-- map script -->
<script>
    $('.bxslider2').bxSlider({
        pagerCustom: '#bx-pager',
        nextSelector: '.slider-next',
        prevSelector: '.slider-prev',
        nextText: '<img src="images/slider-next.png" alt="Next" />',
        prevText: '<img src="images/slider-prev.png" alt="Previous" />'
    });
</script>
</asp:Content>

