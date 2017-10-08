using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["User"] != null)
        //{

        //}
        //else Response.Redirect("Login.aspx");
    }
    protected void Click(object sender, CommandEventArgs e)
    {
        Session["F1"] = e.CommandArgument.ToString();
        //Session["F"] = "p_type";
        Response.Redirect("PropertyListingHome.aspx");
    }
    protected void Click_Flat(object sender, CommandEventArgs e)
    {
        Session["Ft1"] = e.CommandArgument.ToString();
        //Session["Ft"] = "p_type";
        Response.Redirect("PropertyListingHome.aspx");
    }
    protected void Click_Apartment(object sender, CommandEventArgs e)
    {
        Session["A1"] = e.CommandArgument.ToString();
        //Session["A"] = "p_type";
        Response.Redirect("PropertyListingHome.aspx");
    }
}