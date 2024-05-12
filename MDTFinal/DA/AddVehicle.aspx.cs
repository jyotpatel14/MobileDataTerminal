using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class DA_AddVehicle : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String query = "insert into VehicleRecords (civid,regno, model, company,date) values (" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        con.Open();

        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}