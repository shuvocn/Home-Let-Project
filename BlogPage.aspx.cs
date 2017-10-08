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
        try
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("insert into blog (b_title,b_content,b_author, b_date) values(@title,@content,@author,@date)", con);
            cmd.Parameters.AddWithValue("@title", txbxTitle.Text);
            cmd.Parameters.AddWithValue("@content", txbxContent.Text);
            cmd.Parameters.AddWithValue("@author", txbxAuthor.Text);
            cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Created Blog Successfully.');</script>");
            Response.Write("done!!!!!!");
            txbxTitle.Text = "";
            txbxContent.Text = "";
            txbxAuthor.Text = "";
            
        }
        catch (Exception k)
        {
            Response.Write(k.Message);
            
        }
        finally { con.Close(); }
    }
}