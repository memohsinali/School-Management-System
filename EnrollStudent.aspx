<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnrollStudent.aspx.cs" Inherits="School_Management.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Master</title>
</head>
<body>
    <form ID ="form1" runat="server">
        <div align="center">
            <asp:HIDdenField ID="hfStudentID" runat="server" />
            <table border="1" cellspacing="0" cellpadding="0" style="border-color: blue">
                <tr>
                    <td style="text-align: center; font-weight: bold;">Student Name
                    </td>
                </tr>
                <tr>
                    <td>                        
                         <asp:GrIDView ID="gvStudentDetails" runat="server" CellPadding="3" 
                            AutoGenerateColumns="False" ShowFooter="True" 
                            DataKeyNames="StudentID" 
                            ShowHeaderWhenEmpty="True" 
                            OnRowCommand="gvStudentDetails_RowCommand" 
                            OnRowEditing="gvStudentDetails_RowEditing" 
                            OnRowCancelingEdit="gvStudentDetails_RowCancelingEdit" 
                            OnRowUpdating="gvStudentDetails_RowUpdating" 
                            OnRowDeleting="gvStudentDetails_RowDeleting" 
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

                                <asp:TemplateField HeaderText="Student Code" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lblStudentCode" Text='<%# Eval("StudentCode") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtStudentCode" runat="server" Text='<%# Eval("StudentCode") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtStudentCode_Footer" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Student Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblStudentName" Text='<%# Eval("StudentName") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtStudentName" runat="server" Text='<%# Eval("StudentName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtStudentName_Footer" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="StudentEmail">
                                    <ItemTemplate>
                                        <asp:Label ID="lblStudentEmail" Text='<%# Eval("StudentEmail") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtStudentEmail" runat="server" Text='<%# Eval("StudentEmail") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtStudentEmail_Footer" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                   </asp:TemplateField>

                                      <asp:TemplateField HeaderText="StudentAddress">
                                              <ItemTemplate>
                                                  <asp:Label ID="lblStudentAdress" Text='<%# Eval("StudentAddress") %>' runat="server"> </asp:Label>
                                              </ItemTemplate>
                                              <EditItemTemplate>
                                                  <asp:TextBox ID="txtStudentAddress" runat="server" Text='<%# Eval("StudentAddress") %>'></asp:TextBox>
                                              </EditItemTemplate>
                                              <FooterTemplate>
                                                  <asp:TextBox ID="txtStudentAddress_Footer" runat="server"></asp:TextBox>
                                              </FooterTemplate>
                                       </asp:TemplateField>

                                <asp:TemplateField HeaderText="StudentGender" ItemStyle-HorizontalAlign="Right">
                                    <ItemTemplate>
                                        <asp:Label ID="lblStudentGender" Text='<%# Eval("StudentGender") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtStudentGender" runat="server" Text='<%# Eval("StudentGender") %>' WIDth="50px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtStudentGender_Footer" runat="server" WIDth="50px"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="StudentBirthDate" ItemStyle-HorizontalAlign="Right">
                                <ItemTemplate>
                                    <asp:Label ID="lblStudentBirthDate" Text='<%# Eval("StudentBirthDate") %>' runat="server"> </asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtStudentBirthDate" runat="server" Text='<%# Eval("StudentBirthDate") %>' WIDth="50px"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtStudentBirthDate_Footer" runat="server" WIDth="50px"></asp:TextBox>
                                </FooterTemplate>
                              </asp:TemplateField>



                                  <asp:TemplateField HeaderText="Transport" ItemStyle-HorizontalAlign="Right">
                                      <ItemTemplate>
                                          <asp:Label ID="lblTransport" Text='<%# Eval("Transport") %>' runat="server"> </asp:Label>
                                      </ItemTemplate>
                                     <EditItemTemplate>
                                          <asp:TextBox ID="txtTransport" runat="server" Text='<%# Eval("Transport") %>' WIDth="50px"></asp:TextBox>
                                      </EditItemTemplate>
                                      <FooterTemplate>
                                          <asp:TextBox ID="txtTransport_Footer" runat="server" WIDth="50px"></asp:TextBox>
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
