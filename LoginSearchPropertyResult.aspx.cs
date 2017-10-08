using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Default2 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root; password='';database=home_let;");
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {

            try
            {

                MySqlCommand cmdd = new MySqlCommand("select p_image,p_city,p_area,p_type,p_contract,p_bed,p_bath,p_address,p_description,p_details,name,email,mobile from add_property where p_area='" + Session["ResultPage"] + "'", con);
                MySqlDataReader readerk;

                con.Open();
                readerk = cmdd.ExecuteReader();
                if (readerk.Read())
                {
                    ImageNew.ImageUrl = readerk[0].ToString();
                    Label5.Text = readerk[1].ToString();
                    Label6.Text = readerk[2].ToString();
                    Label7.Text = readerk[3].ToString();
                    Label14.Text = readerk[4].ToString();
                    Label12.Text = readerk[5].ToString();
                    Label13.Text = readerk[6].ToString();
                    Label8.Text = readerk[7].ToString();
                    Label9.Text = readerk[8].ToString();
                    Label15.Text = readerk[9].ToString();
                    Label10.Text = readerk[10].ToString();
                    Label16.Text = readerk[11].ToString();
                    Label20.Text = readerk[12].ToString();
                    con.Close();

                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

                        
            
        }
    }

}