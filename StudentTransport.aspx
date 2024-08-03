<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentTransport.aspx.cs" Inherits="School_Management.StudentTransport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students Using Transport</title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:GridView ID="gvStudentsUsingTransport" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                GridLines="Horizontal">
                <Columns>
                    <%--<asp:BoundField DataField="StudentId" HeaderText="Student ID" />--%>
                    <asp:BoundField DataField="StudentCode" HeaderText="Student Code" />
                    <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                    <asp:BoundField DataField="StudentEmail" HeaderText="Student Email" />
                    <asp:BoundField DataField="StudentAddress" HeaderText="Student Address" />
                    <asp:BoundField DataField="StudentGender" HeaderText="Student Gender" />
                    <asp:BoundField DataField="StudentBirthDate" HeaderText="Student BirthDate" />
                    <asp:BoundField DataField="Transport" HeaderText="Transport" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>