using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root; password='';database=home_let;");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyAccount.aspx");
        
    }
    protected void Search_Click(object sender, CommandEventArgs e)
    {
        Session["LoginSearch"] = e.CommandArgument.ToString();
        Response.Redirect("PropertyListingLoginHome.aspx");
    }
    
}
