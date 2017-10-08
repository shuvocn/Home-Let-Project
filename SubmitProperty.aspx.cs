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
        string insertQuery = "INSERT INTO add_property(p_image,p_address,p_area,p_city,p_description,p_details,p_bed,p_bath,p_price,p_type,p_contract,p_date,user_name,name,email,mobile) values (@image,@address,@area,@city,@description,@details,@bed,@bath,@price,@type,@contract,@date,@username,@name,@email,@mobile)";        
        
        try
        {
            MySqlCommand com = new MySqlCommand(insertQuery, con);
            com.Parameters.AddWithValue("@image", "images/" + filename);
            com.Parameters.AddWithValue("@address", propertyAddress.Text);
            com.Parameters.AddWithValue("@area", propertyArea.Text);
            com.Parameters.AddWithValue("@city", city.Text);
            com.Parameters.AddWithValue("@description", propertyDescription.InnerText);
            com.Parameters.AddWithValue("@details", checkList);
            com.Parameters.AddWithValue("@bed", bedRoom.Text);
            com.Parameters.AddWithValue("@bath", bathRoom.Text);
            com.Parameters.AddWithValue("@price", propertyPrice.Text);
            com.Parameters.AddWithValue("@type", propertyType.SelectedItem.ToString());
            com.Parameters.AddWithValue("@contract", DropDownListContract.SelectedItem.ToString());
            com.Parameters.AddWithValue("@date", Date.Text);
            com.Parameters.AddWithValue("@username", username.Text);
            com.Parameters.AddWithValue("@name", name.Text);
            com.Parameters.AddWithValue("@email", email.Text);
            com.Parameters.AddWithValue("@mobile", mobile.Text);
            com.ExecuteNonQuery();
            con.Close();
            propertyType.SelectedValue = "1";
            propertyAddress.Text = "";
            propertyArea.Text = "";
            city.Text = "";
            propertyDescription.InnerText = "";
            propertyPrice.Text = "";
            bedRoom.Text = "";
            bathRoom.Text = "";
            
        }
        catch (Exception ex)
        {
          Response.Write(ex.Message);
        }
    }



    
}
