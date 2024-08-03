<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="School_Management.StudentProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <style>
        /* Style for student details */

        #studentCode{
            font-family: Arial, sans-serif;
            font-size: 16px;
            color: #333;
            margin-top: 20px;
        }

        #studentCode b {
            color: #006699; /* Color for bold text */
        }





        #studentDetails {
            font-family: Arial, sans-serif;
            font-size: 16px;
            color: #333;
            margin-top: 20px;
        }

        #studentDetails b {
            color: #006699; /* Dark blue color */
        }

         #studentCode b {
     color: #006699; /* Dark blue color */
 }

    </style>


</head>



<body>
    <form id="form1" runat="server">
             <div>
            <h2>Welcome to your Profile</h2>
           <div id="studentDetails">
                <!-- Display the student code retrieved from the session variable -->
                <asp:Label ID="lblStudentCode" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblStudentDetails" runat="server" Text=""></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
