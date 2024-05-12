using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class DA_UpdateCivilian : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        disableAll();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        String query = "select * from CivilianData where id = '"+ TextBox1.Text +"' and phone = '"+ TextBox2.Text +"'";
        con.Open();

        cmd = new SqlCommand(query, con);
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Label1.Text = "";
            
            TextBox3.Text = dr[1].ToString();
            TextBox4.Text = dr[2].ToString();
            TextBox5.Text = dr[3].ToString();
            TextBox6.Text = dr[4].ToString();
            TextBox8.Text = DateTime.Parse(dr[4].ToString()).ToString("dd-MM-yyyy");
            TextBox7.Text = dr[5].ToString();

        }
        else
        {
            Label1.Text = "data doesnot exist";
            disableAll();
        }

        con.Close();
    }

    protected void EnableAllField()
    {
        TextBox3.Enabled = true;
        TextBox4.Enabled = true;
        TextBox5.Enabled = true;
        TextBox8.Enabled = true;
        TextBox7.Enabled = true;
        Button2.Enabled = true;
        Button3.Enabled = true;
    }
    protected void disableAll()
    {
        TextBox3.Enabled = false;
        TextBox4.Enabled = false;
        TextBox5.Enabled = false;
        TextBox8.Enabled = false;
        TextBox6.Enabled = false;
        TextBox7.Enabled = false;
        Button2.Enabled = false;
        Button3.Enabled = false;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        EnableAllField();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string update = "Update CivilianData set name = '" + TextBox3.Text + "', fathersname = '" + TextBox4.Text + "', mothername = '" + TextBox5.Text + "', dob = '" + TextBox8.Text + "', phone = '" + TextBox7.Text + "' where id = '" + TextBox1.Text + "'";

        con.Open();
        cmd = new SqlCommand(update, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:50799/MDTFinal/DA/UpdateCivilian.aspx");
    }
}