<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashBoard.aspx.cs" Inherits="DA_DashBoard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button5" runat="server" Text="CivilianProfile" 
            onclick="Button5_Click" />
        <asp:Button ID="Button1" runat="server" Text="CreateCivilian" 
            onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="UpdateCivlian" 
            onclick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="AddVehicle" 
            onclick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="UpdateVehicle" 
            onclick="Button4_Click" />
        <br />
        <iframe id = "mIFrame" runat="server" height = "800px" width = "100%" ></iframe>
    </div>
    </form>
</body>
</html>
