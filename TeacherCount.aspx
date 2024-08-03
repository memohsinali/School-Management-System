<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherCount.aspx.cs" Inherits="School_Management.TeacherCount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Teacher Count</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
            color: #3498db; /* Blue color */
        }
        .label {
            font-size: 24px;
            color: #333;
        }
        .green-text {
            color: #27ae60; /* Green color */
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
            <div class="header">
                <h2>Teacher Count</h2>
            </div>
            <div>
                <asp:Label ID="lblTeacherCount" runat="server" CssClass="label" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
