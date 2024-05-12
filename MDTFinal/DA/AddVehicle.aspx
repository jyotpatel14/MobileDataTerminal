<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddVehicle.aspx.cs" Inherits="DA_AddVehicle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        <asp:Button ID="Button2" runat="server" Text="Cancel" />
    
    </div>
    </form>
</body>
</html>
