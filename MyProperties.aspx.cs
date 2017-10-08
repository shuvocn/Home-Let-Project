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
        
            try
            {
                MySqlDataAdapter da = new MySqlDataAdapter("select * from add_property where user_name='" + Session["User"].ToString() + "' order by p_id desc", con);
                DataSet ds = new DataSet();
                con.Open();

                da.Fill(ds);

                DataList1.DataSource = ds;
                DataList1.DataBind();
                con.Close();
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        
        
    }
    
    protected void LinkButton2_Command1(object sender, CommandEventArgs e)
    {
        try
        {
            con.Open();
            MySqlCommand sda = new MySqlCommand("DELETE FROM add_property  WHERE p_id='" + e.CommandArgument.ToString() + "' ", con);

            sda.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }


    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        Session["New"] = e.CommandArgument.ToString();
        Response.Redirect("UpdateSubmitProperty.aspx");
    }
}