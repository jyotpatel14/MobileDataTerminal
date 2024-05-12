using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DA_DashBoard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mIFrame.Attributes["src"] = "http://localhost:50799/MDTFinal/DA/CreateCivilian.aspx";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        mIFrame.Attributes["src"] = "http://localhost:50799/MDTFinal/DA/UpdateCivilian.aspx";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        mIFrame.Attributes["src"] = "http://localhost:50799/MDTFinal/DA/AddVehicle.aspx";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        mIFrame.Attributes["src"] = "http://localhost:50799/MDTFinal/DA/UpdateVehicle.aspx";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        mIFrame.Attributes["src"] = "http://localhost:50799/MDTFinal/Civilian/CivilianProfile.aspx";
    }
}