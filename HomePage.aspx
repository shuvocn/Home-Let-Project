<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
      <!--======= BANNER =========-->
  <div id="banner">
    <div class="flex-banner">
      <ul class="slides">
        <!--======= SLIDER =========-->
         <li> <img src="images/slider-img-6.jpg" alt="" > </li>
        <li> <img src="images/slider-img-4.jpg" alt="" > </li>
        <li> <img src="images/slider-img-5.jpg" alt="" > </li>
      </ul>
    </div>
    
    
    <!--======= FIND PROPERTY =========-->
    <div class="finder">
      <div class="container">
        <h1>Welcome to Home-To-Let</h1>
        
        
      </div>
    </div>
    
  </div>
 
  
 
  <!--======= SERVICES =========-->
  <section class="services">
    <div class="container"> 
      
      <!--======= TITTLE =========-->
      <div class="tittle"> <img src="images/head-top.png" alt="">
        <h3>services we provide</h3>
        
      </div>
      <ul class="row">
        
        <!--======= SERVICE SECTION =========-->
        <li class="col-sm-3">
          <section> 
            <!--======= SERVICE IMG =========--> 
            <img class="img-responsive" src="images/family-pic.jpg" alt="" >
            <div class="icon"> <img src="images/family-icon.png" alt=""> </div>
            
            <!--======= SERVICE HOVER =========-->
            <div class="ser-hover">
              <p>Family House is more than just a place to stay. We provide a home away from home in which the spirit of our guests can come.<a href="#." class="read-more">Read more <i class="fa fa-angle-double-right"></i></a> </p>
            </div>
            <asp:LinkButton ID="Family_Click"  CssClass="heading" runat="server" 
                CommandArgument='<%# Eval("p_type") %>' OnCommand="Click" >Family</asp:LinkButton>
          </section>
        </li>
        
        <!--======= SERVICE SECTION =========-->
        <li class="col-sm-3">
          <section> 
            <!--======= SERVICE IMG =========--> 
            <img class="img-responsive" src="images/service-img-1.jpg" alt="" >
            <div class="icon"> <img src="images/flat-icon.png" alt=""> </div>
            
            <!--======= SERVICE HOVER =========-->
            <div class="ser-hover">
              <p>And when the odds are against him and their dangers work to do. You bet your life Speed Racer <a href="#." class="read-more">Read more <i class="fa fa-angle-double-right"></i></a> </p>
            </div>
            <asp:LinkButton ID="LinkButton1"  CssClass="heading" runat="server" 
                CommandArgument='<%# Eval("p_type") %>' OnCommand="Click_Flat" >Flat</asp:LinkButton>
        </li>
        
        <!--======= SERVICE SECTION =========-->
        <li class="col-sm-3">
          <section> 
            <!--======= SERVICE IMG =========--> 
            <img class="img-responsive" src="images/appartment-pic.png" alt="" >
            <div class="icon"> <img src="images/icon-services-1.png" alt=""> </div>
            
            <!--======= SERVICE HOVER =========-->
            <div class="ser-hover">
              <p>And when the odds are against him and their dangers work to do. You bet your life Speed Racer <a href="#." class="read-more">Read more <i class="fa fa-angle-double-right"></i></a> </p>
            </div>
              <asp:LinkButton ID="LinkButton2"  CssClass="heading" runat="server" 
                CommandArgument='<%# Eval("p_type") %>' OnCommand="Click_Apartment" >Apartment</asp:LinkButton>
        </li>
        
        <!--======= SERVICE SECTION =========-->
        <li class="col-sm-3">
          <section> 
            <!--======= SERVICE IMG =========--> 
            <img class="img-responsive" src="images/bacherlor-pic.jpg" alt="" >
            <div class="icon"> <img src="images/icon-services-3.png" alt=""> </div>
            
            <!--======= SERVICE HOVER =========-->
            <div class="ser-hover">
              <p>A man who holds an undergraduate degree from a university or college and able to marry, but has not yet.<a href="#." class="read-more">Read more <i class="fa fa-angle-double-right"></i></a> </p>
            </div>
            <asp:LinkButton ID="LinkButton3"  CssClass="heading" runat="server" 
                CommandArgument='<%# Eval("p_type") %>' OnCommand="Click_Bachalor" >Bachalor</asp:LinkButton>
        </li>
      </ul>
      <br />
      <ul class="row">
        
        <!--======= SERVICE SECTION =========-->
        <li class="col-sm-3">
          <section> 
            <!--======= SERVICE IMG =========--> 
            <img class="img-responsive" src="images/sublet-pic.jpg" alt="" >
            <div class="icon"> <img src="images/sublet-icon.png" alt=""> </div>
            
            <!--======= SERVICE HOVER =========-->
            <div class="ser-hover">
              <p> Sublet means to allow someone to use (an apartment, house, etc.) , sublet means renting for a period of time in return for payment.<a href="#." class="read-more">Read more <i class="fa fa-angle-double-right"></i></a> </p>
            </div>
            <asp:LinkButton ID="LinkButton4"  CssClass="heading" runat="server" 
                CommandArgument='<%# Eval("p_type") %>' OnCommand="Click_Sublet" >Sublet</asp:LinkButton>
        </li>
        
        <!--======= SERVICE SECTION =========-->
        <li class="col-sm-3">
          <section> 
            <!--======= SERVICE IMG =========--> 
            <img class="img-responsive" src="images/female-pic.jpg" alt="" >
            <div class="icon"> <img src="images/female-icon.png" alt=""> </div>
            
            <!--======= SERVICE HOVER =========-->
            <div class="ser-hover">
              <p>And when the odds are against him and their dangers work to do. You bet your life Speed Racer <a href="#." class="read-more">Read more <i class="fa fa-angle-double-right"></i></a> </p>
            </div>
            <asp:LinkButton ID="LinkButton5"  CssClass="heading" runat="server" 
                CommandArgument='<%# Eval("p_type") %>' OnCommand="Click_Mess" >Female Mess</asp:LinkButton>
        </li>
        
        <!--======= SERVICE SECTION =========-->
        <li class="col-sm-3">
          <section> 
            <!--======= SERVICE IMG =========--> 
            <img class="img-responsive" src="images/hostel-pic.jpg" alt="" >
            <div class="icon"> <img src="images/hostel-icon.png" alt=""> </div>
            
            <!--======= SERVICE HOVER =========-->
            <div class="ser-hover">
              <p>Hostel is a building primarily providing sleeping and residential quarters for large numbers of people, often boarding school, college or university students.<a href="#." class="read-more">Read more <i class="fa fa-angle-double-right"></i></a> </p>
            </div>
             <asp:LinkButton ID="LinkButton6"  CssClass="heading" runat="server" 
                CommandArgument='<%# Eval("p_type") %>' OnCommand="Click_Hostel" >Hostel</asp:LinkButton>
        </li>
        
        <!--======= SERVICE SECTION =========-->
        <li class="col-sm-3">
          <section> 
            <!--======= SERVICE IMG =========--> 
            <img class="img-responsive" src="images/office-pic.jpg" alt="" >
            <div class="icon"> <img src="images/office-icon.png" alt=""> </div>
            
            <!--======= SERVICE HOVER =========-->
            <div class="ser-hover">
              <p>A room, set of rooms, or building used as a place for commercial work or a position of authority, trust, or service, typically one of a public nature.<a href="#." class="read-more">Read more <i class="fa fa-angle-double-right"></i></a> </p>
            </div>
             <asp:LinkButton ID="LinkButton7"  CssClass="heading" runat="server" 
                CommandArgument='<%# Eval("p_type") %>' OnCommand="Click_Office" >Office Space</asp:LinkButton>
        </li>
      </ul>
    </div>

   
  </section>


</asp:Content>

