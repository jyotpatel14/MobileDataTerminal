<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CivilianProfile.aspx.cs" Inherits="Civilian_CivilianProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        Personal DAta:<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" 
            Width="125px" AutoGenerateRows="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="fathersname" HeaderText="fathersname" 
                    SortExpression="fathersname" />
                <asp:BoundField DataField="mothername" HeaderText="mothername" 
                    SortExpression="mothername" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs %>" 
            SelectCommand="SELECT * FROM [CivilianData] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        Vehicle Details<br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" 
            DataSourceID="SqlDataSource2" RepeatColumns="3">
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                civid:
                <asp:Label ID="cividLabel" runat="server" Text='<%# Eval("civid") %>' />
                <br />
                regno:
                <asp:Label ID="regnoLabel" runat="server" Text='<%# Eval("regno") %>' />
                <br />
                model:
                <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                <br />
                company:
                <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                <br />
                date:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs %>" 
            SelectCommand="SELECT * FROM [VehicleRecords] WHERE ([civid] = @civid)">
            <SelectParameters>
                <asp:SessionParameter Name="civid" SessionField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
