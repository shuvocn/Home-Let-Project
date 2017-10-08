using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;


public partial class Dashboard : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root; password='';database=home_let;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Click_Blog();
        }
    }
    private void Click_Blog()
    {
        try
        {
            con.Open();
           
            MySqlDataAdapter adp = new MySqlDataAdapter("select * from blog order by b_date desc", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            
        }
        catch (Exception ex)
        {
            con.Close();
            Response.Write(ex.Message);
        }
    }
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        try
        {
            con.Open();
            MySqlCommand sda = new MySqlCommand("DELETE FROM blog WHERE b_id='" + e.CommandArgument.ToString() + "' ", con);

            sda.ExecuteNonQuery();
            
        }
        catch (Exception ex)
        {
            con.Close();
            Response.Write(ex.Message);
        }
    }
    protected void LinkButton1_Command2(object sender, CommandEventArgs e)
    {
        try
        {
            con.Open();
            MySqlCommand sda = new MySqlCommand("insert into blog_approve (a_id,a_title,a_author,a_content,a_date) select b_id,b_title,b_author,b_content,b_date from blog WHERE b_id='" + e.CommandArgument.ToString() + "' ", con);

            sda.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            con.Close();
            Response.Write(ex.Message);
        }
    } 
}