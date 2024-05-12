using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Trialreport : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable dt;
    DataTable CivilianList;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
        dt = new DataTable();
        dt.Columns.Add("Id",typeof(int));
        dt.Columns.Add("Name",typeof(string));
        dt.Columns.Add("Phone", typeof(string));

        CivilianList = new DataTable();
        CivilianList.Columns.Add("Id", typeof(int));
        CivilianList.Columns.Add("Name", typeof(string));
        CivilianList.Columns.Add("Phone", typeof(string));

        if (!IsPostBack)
        {
            dt = new DataTable();
            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Name", typeof(string));
            dt.Columns.Add("Phone", typeof(string));

            CivilianList = new DataTable();
            CivilianList.Columns.Add("Id", typeof(int));
            CivilianList.Columns.Add("Name", typeof(string));
            CivilianList.Columns.Add("Phone", typeof(string));
            Session["CiviliansInvolved"] = CivilianList;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "Select id,name,phone from CivilianData where id = " + TextBox1.Text;
        con.Open();
        cmd = new SqlCommand(query, con);
        dr = cmd.ExecuteReader();
       

        if (dr.Read())
        {
            DataRow row = dt.NewRow();
            row["Id"] = dr[0].ToString();
            row["Name"] = dr[1].ToString();
            row["Phone"] = dr[2].ToString();

            dt.Rows.Add(row);
        }

        con.Close();

       
        DataList1.DataSource = dt;
        DataList1.DataBind();
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "AddCiv")
        {
            string query = "Select id,name,phone from CivilianData where id = " + e.CommandArgument.ToString();
            con.Open();
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();

            CivilianList = (DataTable) Session["CiviliansInvolved"];
            if (dr.Read())
            {
                DataRow row = CivilianList.NewRow();
                row["Id"] = dr[0].ToString();
                row["Name"] = dr[1].ToString();
                row["Phone"] = dr[2].ToString();

                CivilianList.Rows.Add(row);
            }

            con.Close();

            GridView1.DataSource = CivilianList;
            GridView1.DataBind();
            DataList2.DataSource = CivilianList;
            DataList2.DataBind();
            Session["CiviliansInvolved"] = CivilianList;
        }
        if (e.CommandName == "RemCiv")
        {
            CivilianList = (DataTable)Session["CiviliansInvolved"];

            DataRow[] rows = CivilianList.Select("Id = "+e.CommandArgument.ToString());
            if (rows.Length > 0)
            {
                rows[0].Delete();
                CivilianList.AcceptChanges();
            }
            

            GridView1.DataSource = CivilianList;
            GridView1.DataBind();
            DataList2.DataSource = CivilianList;
            DataList2.DataBind();
            Session["CiviliansInvolved"] = CivilianList;
        }
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "RemCiv")
        {
            CivilianList = (DataTable)Session["CiviliansInvolved"];

            DataRow[] rows = CivilianList.Select("Id = " + e.CommandArgument.ToString());
            if (rows.Length > 0)
            {
                rows[0].Delete();
                CivilianList.AcceptChanges();
            }


            GridView1.DataSource = CivilianList;
            GridView1.DataBind();
            DataList2.DataSource = CivilianList;
            DataList2.DataBind();
            Session["CiviliansInvolved"] = CivilianList;
        }
    }
}