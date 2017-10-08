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

    protected void Send_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlDataAdapter sda = new MySqlDataAdapter("INSERT INTO contact_us(c_name,c_email,c_massage) values ('" + LoginContactName.Text + "','" + LoginContactEmail.Text + "','" + LoginContactMassage.InnerText + "')", con);
        try
        {
            sda.SelectCommand.ExecuteNonQuery();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Massage was send successfully.');</script>");

            LoginContactName.Text = " ";
            LoginContactEmail.Text = " ";
            LoginContactMassage.InnerText = " ";

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}