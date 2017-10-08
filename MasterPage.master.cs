using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Sign_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginPage.aspx");
    }
    protected void Register_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUpPage.aspx");
    }
    protected void Search_Click(object sender, CommandEventArgs e)
    {
        Session["Search"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingHome.aspx");
    }
    
}
