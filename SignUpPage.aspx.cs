using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root; password='';database=home_let;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Register_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlDataAdapter sda = new MySqlDataAdapter("INSERT INTO login(name,user_name,password,repeat_pass,email,mobile) values ('" + name.Text + "','" + username.Text + "','" + password.Text + "','" + repeat.Text + "','" + email.Text + "','" + mobile.Text + "')", con);
        try
        {
            sda.SelectCommand.ExecuteNonQuery();

            Response.Redirect("LoginPage.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Register successfully.');</script>");

            con.Close();
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('User Name Already Exist.');</script>");
            Response.Write(ex.Message);
        }

        
    }
}