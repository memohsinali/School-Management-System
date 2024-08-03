<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherTransport.aspx.cs" Inherits="School_Management.TeacherTransport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div align="center">
     <asp:GridView ID="gvTeachersUsingTransport" runat="server" AutoGenerateColumns="False" BackColor="White"
         BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black"
         GridLines="Horizontal">
         <Columns>
             <%--<asp:BoundField DataField="TeacherId" HeaderText="Teacher ID" />--%>
             <asp:BoundField DataField="TeacherCode" HeaderText="Teacher Code" />
             <asp:BoundField DataField="TeacherName" HeaderText="Teacher Name" />
             <asp:BoundField DataField="TeacherEmail" HeaderText="Teacher Email" />
             <asp:BoundField DataField="TeacherAddress" HeaderText="Teacher Address" />
             <asp:BoundField DataField="TeacherGender" HeaderText="Teacher Gender" />
             <asp:BoundField DataField="TeacherBirthDate" HeaderText="Teacher BirthDate" />
             <asp:BoundField DataField="SubjectCode" HeaderText="Subject" />
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
