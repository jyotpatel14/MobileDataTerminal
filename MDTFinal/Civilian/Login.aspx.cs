using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Civilian_Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "select * from CivilianData where id = '"+ TextBox1.Text +"' and phone = '"+ TextBox2.Text +"'";

        con.Open();
            
        cmd = new SqlCommand(query,con);

        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session["id"] = dr[0].ToString();
            Response.Redirect("~/Civilian/CivilianProfile.aspx");

        }

        con.Close();
    }
}