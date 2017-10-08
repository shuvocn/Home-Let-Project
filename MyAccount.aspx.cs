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

    protected void Button1_Click(object sender, EventArgs e) 
    
    {
        MySqlDataAdapter sda = new MySqlDataAdapter("UPDATE login SET name ='" + TextBox2.Text + "',password ='" + TextBox4.Text + "',repeat_pass ='" + TextBox5.Text + "',email ='" + TextBox6.Text + "',mobile ='" + TextBox7.Text + "' WHERE user_name='" + TextBox3.Text + "'", con);
        try
        {
            con.Open();
            sda.SelectCommand.ExecuteNonQuery();
            con.Close();


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);

        }
            
    }
    protected void Show_Button(object sender, EventArgs e)
    {
        string strUser = "";
        if (Request.Cookies["edit"] != null)
            strUser = Request.Cookies["edit"]["username"].ToString();


        MySqlCommand cmd = new MySqlCommand(String.Format("select name,user_name,password,repeat_pass,email,mobile from login where user_name='{0}'", strUser), con);
        MySqlDataReader reader;

        con.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            TextBox2.Text = reader[0].ToString();
            TextBox3.Text = reader[1].ToString();
            TextBox4.Text = reader[2].ToString();
            TextBox5.Text = reader[3].ToString();
            TextBox6.Text = reader[4].ToString();
            TextBox7.Text = reader[5].ToString();

        }

        else Response.Redirect("Login.aspx");
        con.Close();
    }
}