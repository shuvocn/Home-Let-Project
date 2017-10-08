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
            filldatalist();
        }
    }
    public void filldatalist()
    {
        try
        {
            MySqlDataAdapter da = new MySqlDataAdapter("select * from contact_us order by c_id desc", con);
            DataSet ds = new DataSet();
            con.Open();
            da.Fill(ds);

            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        finally
        {
            con.Close();
        }
    }
    
    
}