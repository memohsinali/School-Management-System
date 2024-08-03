<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeeInfo.aspx.cs" Inherits="School_Management.FeeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to Student Page</h1>
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