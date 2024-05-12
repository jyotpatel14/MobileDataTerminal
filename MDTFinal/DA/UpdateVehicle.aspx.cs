using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class DA_UpdateVehicle : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        disableallfields();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string query = "select * from VehicleRecords where regno = '" + TextBox6.Text + "'";
        con.Open();
        cmd = new SqlCommand(query, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = "";
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[4].ToString();
            TextBox5.Text = dr[5].ToString();

        }
        else
        {
            Label1.Text = "data does not exist";
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string update = "update VehicleRecords set civid = " + TextBox1.Text + ",regno = '" + TextBox2.Text + "',model = '" + TextBox3.Text + "', company = '" + TextBox4.Text + "',date = '" + TextBox5.Text + "'";

        con.Open();

        cmd = new SqlCommand(update, con);
        cmd.ExecuteNonQuery();

        con.Close();
    }

    protected void disableallfields()
    {
        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;
        TextBox5.Enabled = false;
        Button1.Enabled = false;
        Button2.Enabled = false;
    }
    protected void enableallfields()
    {
        TextBox1.Enabled = true;
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
        TextBox4.Enabled = true;
        TextBox5.Enabled = true;
        Button1.Enabled = true;
        Button2.Enabled = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        enableallfields();
    }
}