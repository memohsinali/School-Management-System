<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAccount.aspx.cs" Inherits="School_Management.StudentAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login</title>
    <style>
        body {
            background-image: url("Images/school.png");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed; /* Keeps the background image fixed when scrolling */
            font-family: Arial, sans-serif;
        }

        #loginForm {
            margin-top: 200px;
            display: flex;
            justify-content: center;
        }

        fieldset {
            width: 350px;
            border: none;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            padding: 20px;
        }

        legend {
            font-weight: bold;
            background-color: blue;
            border: solid;
            border-radius: 5px;
            padding: 5px 10px;
        }

        table {
            width: 100%;
        }

        table tr td {
            padding: 5px;
        }

        .label {
            font-weight: bold;
        }

        .requiredFieldValidator {
            color: red;
        }

        #btnLogin {
            background-color: yellowgreen;
            border: none;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
        }

        #lblMessage {
            font-weight: bold;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="loginForm">
            <fieldset>
                <legend>Student Login</legend>
                <table>
                    <tr>
                        <td class="label">Student Code</td>
                        <td>
                            <asp:TextBox ID="txtStudentCode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvfStudentCode" runat="server" ControlToValidate="txtStudentCode"
                                ErrorMessage="Please enter Student Code." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">Password</td>
                        <td>
                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvfPassword" runat="server" ControlToValidate="txtPassword"
                                ErrorMessage="Please enter Password." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMessage" runat="server" style="font-weight:bold"></asp:Label>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </form>
</body>
</html>
