<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Civilian_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Id:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Phone:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
