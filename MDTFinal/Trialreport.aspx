<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Trialreport.aspx.cs" Inherits="Trialreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:DataList ID="DataList2" runat="server" 
            onitemcommand="DataList2_ItemCommand" RepeatColumns="5">
            <HeaderTemplate>
                Civilians Involved :
            </HeaderTemplate>
            <ItemTemplate>
                <asp:Button ID="Button4" runat="server" Text='<%# Eval("Name") %>' 
                    CommandArgument='<%# Eval("Id") %>' CommandName="RemCiv" UseSubmitBehavior="False" />
            </ItemTemplate>
        </asp:DataList>
        <asp:DataList ID="DataList1" runat="server" 
            onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                 phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("Id") %>' 
                    CommandName="AddCiv" Text="Add" UseSubmitBehavior="False" />
                <asp:Button ID="Button3" runat="server" Text="Remove" CommandArgument='<%# Eval("Id") %>' 
                    CommandName="RemCiv" UseSubmitBehavior="False" />
                <br />
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
