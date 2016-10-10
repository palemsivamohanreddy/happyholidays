using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsavehotel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HappyHolidaysConn"].ConnectionString.ToString());
        SqlCommand cmd = new SqlCommand("insert_hotel", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@hname", txthotelname.Text);
        cmd.Parameters.AddWithValue("@r", optrating.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@rpd", txt_rentperday.Text);
        cmd.Parameters.AddWithValue("@hcity", txt_cityname.Text);
        
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["addhotel"] = txthotelname.Text.ToString();
        Response.Redirect("Add_newhotel_success.aspx");

    }
}