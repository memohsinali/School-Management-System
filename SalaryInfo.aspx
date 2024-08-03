<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalaryInfo.aspx.cs" Inherits="School_Management.SalaryInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to Teacher Page</h1>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Month" HeaderText="Month" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>