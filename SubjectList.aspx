<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubjectList.aspx.cs" Inherits="School_Management.SubjectList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <style>
        body {
            background-image: url("Images/subjects.jpeg");
            background-size: cover; /* Cover the entire background */
            background-repeat: no-repeat; /* Prevent repeating the background image */
        }
    </style>



</head>

<body>
    <form id="form1" runat="server">
      
        <div align="center">
    <asp:GridView ID="gvSubjectList" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black"
        GridLines="Horizontal">
        <Columns>
            <%--<asp:BoundField DataField="SubjectId" HeaderText="Subject ID" />--%>
            <asp:BoundField DataField="SubjectCode" HeaderText="Subject Code" />
            <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" />
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
