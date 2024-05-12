<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateCivilian.aspx.cs" Inherits="DA_UpdateCivilian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        ID:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        Phone:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button4" runat="server" Text="Search" onclick="Button4_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="EDIT" onclick="Button1_Click" />
    </p>
    <p>
        name:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        fathers name:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        Mothers nameL<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        dob:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        Phone:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
    </p>
    </form>
</body>
</html>
