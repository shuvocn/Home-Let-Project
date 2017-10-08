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
    protected void Login_Click(object sender, EventArgs e)
    {

        try
        {
            con.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter("select user_name and password from login where user_name='" + user.Text + "' and password='" + pass.Text + "'", con);
           
            DataTable dt = new DataTable();

            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                HttpCookie cookie = new HttpCookie("edit");
                cookie["username"] = user.Text;
                Response.Cookies.Add(cookie);

                Session["User"] = user.Text;
                Response.Redirect("LoginHomePage.aspx");
            }

            else
            {

                MySqlDataAdapter msd = new MySqlDataAdapter("select a_user and a_password from admin_login where a_user='" + user.Text + "' and a_password='" + pass.Text + "'", con);

                DataTable dtt = new DataTable();

                msd.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["Admin"] = user.Text;
                    Response.Redirect("Dashboard.aspx");
                }
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
}