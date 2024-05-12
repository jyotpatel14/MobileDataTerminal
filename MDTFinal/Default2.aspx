<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" onitemcommand="FormView1_ItemCommand">
            <EditItemTemplate>
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                fathersname:
                <asp:TextBox ID="fathersnameTextBox" runat="server" 
                    Text='<%# Bind("fathersname") %>' />
                <br />
                mothername:
                <asp:TextBox ID="mothernameTextBox" runat="server" 
                    Text='<%# Bind("mothername") %>' />
                <br />
                dob:
                <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                fathersname:
                <asp:TextBox ID="fathersnameTextBox" runat="server" 
                    Text='<%# Bind("fathersname") %>' />
                <br />
                mothername:
                <asp:TextBox ID="mothernameTextBox" runat="server" 
                    Text='<%# Bind("mothername") %>' />
                <br />
                dob:
                <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                <br />
                fathersname:
                <asp:Label ID="fathersnameLabel" runat="server" 
                    Text='<%# Bind("fathersname") %>' />
                <br />
                mothername:
                <asp:Label ID="mothernameLabel" runat="server" 
                    Text='<%# Bind("mothername") %>' />
                <br />
                dob:
                <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                <br />

                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" CommandArgument="id" CommandName="cmd" 
                    Text="Button" />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs %>" 
            SelectCommand="SELECT * FROM [CivilianData] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </form>
</body>
</html>
