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
        Date.Text = DateTime.Now.ToString("D");

        if (!IsPostBack)
        {
            try
            {

                MySqlCommand cmdd = new MySqlCommand("select p_address,p_area,p_city,p_description,p_price,p_bed,p_bath from add_property where p_id='" + Session["New"] + "'", con);
                MySqlDataReader readerk;

                con.Open();
                readerk = cmdd.ExecuteReader();
                if (readerk.Read())
                {
                    propertyAddress.Text = readerk[0].ToString();
                    propertyArea.Text = readerk[1].ToString();
                    city.Text = readerk[2].ToString();
                    propertyDescription.InnerText = readerk[3].ToString();
                    propertyPrice.Text = readerk[4].ToString();
                    bedRoom.Text = readerk[5].ToString();
                    bathRoom.Text = readerk[6].ToString();
                }

                else Response.Redirect("Login.aspx");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
            con.Open();
            string strUser = "";
            if (Request.Cookies["edit"] != null)
            strUser = Request.Cookies["edit"]["username"].ToString();


            MySqlCommand cmd = new MySqlCommand(String.Format("select user_name,name,email,mobile from login where user_name='{0}'", strUser), con);
            MySqlDataReader reader;

            
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                username.Text = reader[0].ToString();
                name.Text = reader[1].ToString();
                email.Text = reader[2].ToString();
                mobile.Text = reader[3].ToString();
            }

            con.Close();
            
       
    }
    protected void Submit_Click(object sender, EventArgs e)
    {

        string checkList = string.Empty;
        foreach (ListItem item in CheckBoxListDetails.Items)
        {
            if (item.Selected)
            
                checkList += string.Format("{0},", item.Text);
            
        }

        string filename = FileUploadImages.PostedFile.FileName;
        FileUploadImages.SaveAs(Server.MapPath("images/" + filename));

        con.Open();
        MySqlDataAdapter sda = new MySqlDataAdapter("UPDATE add_property SET p_image ='" + "images/" + filename + "',p_address ='" + propertyAddress.Text + "',p_area ='" + propertyArea.Text + "',p_city ='" + city.Text + "',p_description ='" + propertyDescription.InnerText + "',p_details ='" + checkList + "',p_price ='" + propertyPrice.Text + "',p_type ='" + propertyType.SelectedItem.ToString() + "',p_contract ='" + DropDownListContract.SelectedItem.ToString() + "',p_date ='" + Date.Text + "',user_name ='" + username.Text + "',p_bed ='" + bedRoom.Text + "',p_bath ='" + bathRoom.Text + "',name ='" + name.Text + "',email ='" + email.Text + "',mobile ='" + mobile.Text + "' WHERE p_id='" + Session["New"] + "'", con);
        try
        {
            sda.SelectCommand.ExecuteNonQuery();
            con.Close();


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);

        }
        
    }

   
    
}
