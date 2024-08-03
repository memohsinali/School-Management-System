<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnrollTeacher.aspx.cs" Inherits="School_Management.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Master</title>
</head>
<body>
    <form ID ="form1" runat="server">
        <div align="center">
            <asp:HIDdenField ID="hfTeacherID" runat="server" />
            <table border="1" cellspacing="0" cellpadding="0" style="border-color: blue">
                <tr>
                    <td style="text-align: center; font-weight: bold;">Teacher Name
                    </td>
                </tr>
                <tr>
                    <td>                        
                         <asp:GrIDView ID="gvTeacherDetails" runat="server" CellPadding="3" 
                            AutoGenerateColumns="False" ShowFooter="True" 
                            DataKeyNames="TeacherID" 
                            ShowHeaderWhenEmpty="True" 
                            OnRowCommand="gvTeacherDetails_RowCommand" 
                            OnRowEditing="gvTeacherDetails_RowEditing" 
                            OnRowCancelingEdit="gvTeacherDetails_RowCancelingEdit" 
                            OnRowUpdating="gvTeacherDetails_RowUpdating" 
                            OnRowDeleting="gvTeacherDetails_RowDeleting" 
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

                                <asp:TemplateField HeaderText="Teacher Code" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTeacherCode" Text='<%# Eval("TeacherCode") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtTeacherCode" runat="server" Text='<%# Eval("TeacherCode") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtTeacherCode_Footer" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Teacher Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTeacherName" Text='<%# Eval("TeacherName") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtTeacherName" runat="server" Text='<%# Eval("TeacherName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtTeacherName_Footer" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="TeacherEmail">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTeacherEmail" Text='<%# Eval("TeacherEmail") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtTeacherEmail" runat="server" Text='<%# Eval("TeacherEmail") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtTeacherEmail_Footer" runat="server"></asp:TextBox>
                                    </FooterTemplate>
                                   </asp:TemplateField>

                                      <asp:TemplateField HeaderText="TeacherAddress">
                                              <ItemTemplate>
                                                  <asp:Label ID="lblTeacherAdress" Text='<%# Eval("TeacherAddress") %>' runat="server"> </asp:Label>
                                              </ItemTemplate>
                                              <EditItemTemplate>
                                                  <asp:TextBox ID="txtTeacherAddress" runat="server" Text='<%# Eval("TeacherAddress") %>'></asp:TextBox>
                                              </EditItemTemplate>
                                              <FooterTemplate>
                                                  <asp:TextBox ID="txtTeacherAddress_Footer" runat="server"></asp:TextBox>
                                              </FooterTemplate>
                                       </asp:TemplateField>

                                <asp:TemplateField HeaderText="TeacherGender" ItemStyle-HorizontalAlign="Right">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTeacherGender" Text='<%# Eval("TeacherGender") %>' runat="server"> </asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtTeacherGender" runat="server" Text='<%# Eval("TeacherGender") %>' WIDth="50px"></asp:TextBox>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtTeacherGender_Footer" runat="server" WIDth="50px"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="TeacherBirthDate" ItemStyle-HorizontalAlign="Right">
                                <ItemTemplate>
                                    <asp:Label ID="lblTeacherBirthDate" Text='<%# Eval("TeacherBirthDate") %>' runat="server"> </asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtTeacherBirthDate" runat="server" Text='<%# Eval("TeacherBirthDate") %>' WIDth="50px"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtTeacherBirthDate_Footer" runat="server" WIDth="50px"></asp:TextBox>
                                </FooterTemplate>
                              </asp:TemplateField>



                                  <asp:TemplateField HeaderText="Subject" ItemStyle-HorizontalAlign="Right">
                                      <ItemTemplate>
                                          <asp:Label ID="lblSubjectCode" Text='<%# Eval("SubjectCode") %>' runat="server"> </asp:Label>
                                      </ItemTemplate>
                                      <EditItemTemplate>
                                          <asp:TextBox ID="txtSubjectCode" runat="server" Text='<%# Eval("SubjectCode") %>' WIDth="50px"></asp:TextBox>
                                      </EditItemTemplate>
                                      <FooterTemplate>
                                          <asp:TextBox ID="txtSubjectCode_Footer" runat="server" WIDth="50px"></asp:TextBox>
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
