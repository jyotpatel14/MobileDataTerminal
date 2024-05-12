<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateCivilian.aspx.cs" Inherits="DA_CreateCivilian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        name:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        fathers name:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Mothers nameL<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        dob:<asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        Phone:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
    </div>
    </form>
</body>
</html>
