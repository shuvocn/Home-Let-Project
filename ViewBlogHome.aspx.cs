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
        BindBlog();
    }
    void BindBlog()
    {
        try
        {
            con.Open();

            MySqlCommand cmd = new MySqlCommand("select * from blog_approve order by a_date desc ", con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cmd.Dispose();
        }
        catch (Exception k)
        {
            Response.Write(k.Message);
            
        }
        finally
        {
            con.Close();
        }

    }
}