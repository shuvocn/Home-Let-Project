using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root; password='';database=home_let;");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Click(object sender, CommandEventArgs e)
    {
        Session["F"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingHome.aspx");
    }
    protected void Click_Flat(object sender, CommandEventArgs e)
    {
        Session["Ft"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingHome.aspx");
    }
    protected void Click_Apartment(object sender, CommandEventArgs e)
    {
        Session["A"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingHome.aspx");
    }
    protected void Click_Bachalor(object sender, CommandEventArgs e)
    {
        Session["B"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingHome.aspx");
    }
    protected void Click_Sublet(object sender, CommandEventArgs e)
    {
        Session["S"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingHome.aspx");
    }
    protected void Click_Mess(object sender, CommandEventArgs e)
    {
        Session["M"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingHome.aspx");
    }
    protected void Click_Hostel(object sender, CommandEventArgs e)
    {
        Session["H"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingHome.aspx");
    }
    protected void Click_Office(object sender, CommandEventArgs e)
    {
        Session["O"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingHome.aspx");
    }
}