using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        TextBox myTextBox = (TextBox)FormView1.FindControl("TextBox2");
        string textBoxValue = myTextBox.Text;
        Label1.Text = textBoxValue;
        if (e.CommandName == "cmd")
        {
            
        }
    }
}