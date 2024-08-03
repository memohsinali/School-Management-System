<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="School_Management.Subject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Subject Master</title>
</head>
<body>
    <form ID ="form1" runat="server">
        <div align="center">
            <asp:HIDdenField ID="hfSubjectID" runat="server" />
            <table border="1" cellspacing="0" cellpadding="0" style="border-color: blue">
                <tr>
                    <td style="text-align: center; font-weight: bold;">Subject Name
                    </td>
                </tr>
                <tr>
                    <td>                        
                         <asp:GrIDView ID="gvSubjectDetails" runat="server" CellPadding="3" 
                            AutoGenerateColumns="False" ShowFooter="True" 
                            DataKeyNames="SubjectID" 
                            ShowHeaderWhenEmpty="True" 
                            OnRowCommand="gvSubjectDetails_RowCommand" 
                            OnRowEditing="gvSubjectDetails_RowEditing" 
                            OnRowCancelingEdit="gvSubjectDetails_RowCancelingEdit" 
                            OnRowUpdating="gvSubjectDetails_RowUpdating" 
                            OnRowDeleting="gvSubjectDetails_RowDeleting" 
                            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWIDth="1px" CellSpacing="2">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                            <Columns>

                                <asp:TemplateField HeaderText="Subject Code" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSubjectCode" Text='<%# Eval("SubjectCode") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtSubjectCode" runat="server" Text='<%# Eval("SubjectCode") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtSubjectCode_Footer" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Subject Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSubjectName" Text='<%# Eval("SubjectName") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtSubjectName" runat="server" Text='<%# Eval("SubjectName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtSubjectName_Footer" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                          
                                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:ImageButton ImageUrl="~/Images/Edit.png" runat="server" CommandName="Edit" ToolTip="Edit" WIDth="20px" Height="20px" />
                                        <asp:ImageButton ImageUrl="~/Images/Delete.png" runat="server" CommandName="Delete" ToolTip="Delete" WIDth="20px" Height="20px" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:ImageButton ImageUrl="~/Images/Save.png" runat="server" CommandName="Update" ToolTip="Update" WIDth="20px" Height="20px" />
                                        <asp:ImageButton ImageUrl="~/Images/Cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" WIDth="20px" Height="20px" />
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:ImageButton ImageUrl="~/Images/Add.png" runat="server" CommandName="Add" ToolTip="Add" WIDth="20px" Height="20px" />
                                    </FooterTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GrIDView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmessage" runat="server" style="font-weight:bold;color:green"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
