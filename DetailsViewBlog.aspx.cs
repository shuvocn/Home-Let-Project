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
        if (Request.QueryString.Get("a_id") != null)
        {
            DetailsView1.DefaultMode = DetailsViewMode.ReadOnly;
            detail();
            bindComment();
        }
    }

    void detail()
    {
        try
        {
            
            con.Open();
           
            MySqlCommand cmd = new MySqlCommand("select * from blog_approve where a_id=@id", con);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["a_id"]);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            ds.Tables[0].Columns.Add("FormDate", typeof(string));
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DateTime date = (DateTime)ds.Tables[0].Rows[0]["a_date"];
                string format = "MMM ddd d, yyyy";
                ds.Tables[0].Rows[0]["FormDate"] = date.ToString(format);
            }
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
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

    void bindComment()
    {
        try
        {
           
            con.Open();
         
            MySqlCommand cmd = new MySqlCommand("select * from coment where blog_id=@id", con);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["a_id"]);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                GridViewcomment.Visible = false;
                LabelNoComment.Visible = true;
            }
            else
            {
                GridViewcomment.Visible = true;
                LabelNoComment.Visible = false;
                GridViewcomment.DataSource = ds;
                GridViewcomment.DataBind();
            }

        }
        catch (Exception)
        {

            con.Close(); 
        }
        finally { }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txbxcomment.Text != txbxcomment.ToolTip.ToString() || txbxcommentauthor.Text != txbxcommentauthor.ToolTip.ToString())
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                MySqlCommand cmd = new MySqlCommand("insert into coment(blog_id, c_comment, c_name, c_date) values(@bid,@com,@name,@date)", con);
                cmd.Parameters.AddWithValue("@bid", Request.QueryString["a_id"]);
                cmd.Parameters.AddWithValue("@com", txbxcomment.Text);
                cmd.Parameters.AddWithValue("@name", txbxcommentauthor.Text);
                cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                txbxcomment.Text = String.Empty;
                txbxcommentauthor.Text = String.Empty;
                bindComment();
            }
            else
            {

            }

        }
        catch (Exception)
        {

            con.Close();
        }
        
    }
}