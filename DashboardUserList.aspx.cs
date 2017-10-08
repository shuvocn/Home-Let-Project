using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;


public partial class Dashboard : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root; password='';database=home_let;");
    protected void Page_Load(object sender, EventArgs e)
    {
       

        if (!IsPostBack)
        {
            datalist();

        }
    }
    

    public void datalist()
    {
        try
        {
            MySqlDataAdapter da = new MySqlDataAdapter("select * from login", con);
            DataTable dt = new DataTable();
            con.Open();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        finally
        {
            con.Close();
        }
    }




    protected void deleting(object sender, GridViewDeleteEventArgs e)
    {
        Label Id_No = (Label)GridView1.Rows[e.RowIndex].FindControl("Id");

        con.Open();
        MySqlDataAdapter sda = new MySqlDataAdapter("DELETE FROM login WHERE id='"+Id_No.Text+"' ", con);

        try
        {

            sda.SelectCommand.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            datalist();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

}