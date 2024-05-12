<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateVehicle.aspx.cs" Inherits="DA_UpdateVehicle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        Registration No:
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button3" runat="server" Text="Search" onclick="Button3_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button4" runat="server" Text="Edit" onclick="Button4_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
    
        Civilian ID:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Registration No:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Model:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Company:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        Date of Purchase:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" Width="55px" />
    
    </p>
    <div>
    
    </div>
    </form>
</body>
</html>
