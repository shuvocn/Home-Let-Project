using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
public partial class Default2 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root; password='';database=home_let;");
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            if (Session["F1"] != null)
            {

                MySqlDataAdapter da = new MySqlDataAdapter("select p_image,p_area,p_address,p_description,p_price,p_type,p_bed,p_bath from add_property where p_type='" + "Family" + "' order by p_id desc", con);
                DataTable dt = new DataTable();
                con.Open();
                da.Fill(dt);

                DataList1.DataSource = dt;
                DataList1.DataBind();

                con.Close();
                Session.Clear();
            }

            else if (Session["Ft1"] != null)
            {

                MySqlDataAdapter da = new MySqlDataAdapter("select p_image,p_area,p_address,p_description,p_price,p_type,p_bed,p_bath from add_property where p_type='" + "Flat" + "' order by p_id desc", con);
                DataTable dt = new DataTable();
                con.Open();
                da.Fill(dt);

                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
                Session.Clear();
            }

            else if (Session["A1"] != null)
            {

                MySqlDataAdapter da = new MySqlDataAdapter("select p_image,p_area,p_address,p_description,p_price,p_type,p_bed,p_bath from add_property where p_type='" + "Apartment" + "' order by p_id desc", con);
                DataTable dt = new DataTable();
                con.Open();
                da.Fill(dt);

                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
                Session.Clear();
            }
            else if (Session["LoginSearch"] != null)
            {

                MySqlDataAdapter da = new MySqlDataAdapter("select p_image,p_area,p_address,p_description,p_price,p_type,p_bed,p_bath from add_property order by p_id desc", con);
                DataTable dt = new DataTable();
                con.Open();
                da.Fill(dt);

                DataList1.DataSource = dt;
                DataList1.DataBind();

                con.Close();
                Session.Clear();
            }
            else
            {
                Response.Redirect("LoginHomePage.aspx");
            }
            
        }
        
    }

    protected void Search_Click(object sender, EventArgs e)
    {
        DataList1.DataSource = null;
        DataTable dt = new DataTable();

        if ((propertyCity.Text != "1"))
        {
            if ((propertyCity.Text != "1") && (propertyArea.Text != "1"))
            {
                if ((propertyCity.Text != "1") && (propertyArea.Text != "1") && (propertyType.Text != "1"))
                {
                    MySqlDataAdapter ssa = new MySqlDataAdapter("select p_image,p_area,p_address,p_description,p_price,p_type,p_bed,p_bath from add_property where (p_city like '%" + propertyCity.Text + "%') AND (p_area like '" + propertyArea.Text + "%') AND (p_type like '" + propertyType.Text + "%')", con);
                    ssa.Fill(dt);
                }
                else
                {
                    MySqlDataAdapter ssa = new MySqlDataAdapter("select p_image,p_area,p_address,p_description,p_price,p_type,p_bed,p_bath from add_property where (p_city like '%" + propertyCity.Text + "%') AND (p_area like '" + propertyArea.Text + "%')", con);
                    ssa.Fill(dt);
                }
            }
            else if ((propertyCity.Text != "1") && (propertyType.Text != "1"))
            {
                MySqlDataAdapter ssa = new MySqlDataAdapter("select p_image,p_area,p_address,p_description,p_price,p_type,p_bed,p_bath from add_property where (p_city like '%" + propertyCity.Text + "%') AND (p_type like '" + propertyType.Text + "%')", con);
                ssa.Fill(dt);
            }
            else
            {
                MySqlDataAdapter ssa = new MySqlDataAdapter("select p_image,p_area,p_address,p_description,p_price,p_type,p_bed,p_bath from add_property where (p_city like '%" + propertyCity.Text + "%') ", con);

                ssa.Fill(dt);
            }
        }
        con.Open();
        DataList1.DataSource = dt;
        DataList1.DataBind();

        con.Close();
    }
    protected void Result_Page(object sender, CommandEventArgs e)
    {
        Session["ResultPage"] = e.CommandArgument.ToString();
        Response.Redirect("LoginSearchPropertyResult.aspx");
    }
}