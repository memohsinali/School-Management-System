<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherProfile.aspx.cs" Inherits="School_Management.TeacherProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <style>
        /* Style for Teacher details */

        #TeacherCode{
            font-family: Arial, sans-serif;
            font-size: 16px;
            color: #333;
            margin-top: 20px;
        }

        #TeacherCode b {
            color: #006699; /* Color for bold text */
        }





        #TeacherDetails {
            font-family: Arial, sans-serif;
             font-size: 16px;
             color: #333;
             margin-top: 20px;
        }

        #TeacherDetails b {
            color: #006699; /* Color for bold text */
        }

         #TeacherCode b {
     color: #006699; /* Color for bold text */
 }

    </style>


</head>



<body>
    <form id="form1" runat="server">
             <div>
            <h2>Welcome to your Profile</h2>
           <div id="TeacherDetails">
                <!-- Display the Teacher code retrieved from the session variable -->
                <asp:Label ID="lblTeacherCode" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblTeacherDetails" runat="server" Text=""></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
