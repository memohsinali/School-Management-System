<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="School_Management.StudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

      <style>
      body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 0;
          overflow: auto; /* Hide main page scrollbars */
      }

      .sidebar-container {
          height: 100%;
          width: 200px;
          position: fixed;
          top: 0;
          left: 0;
          background-color: #f1f1f1;
          padding-top: 20px;
          overflow-y: auto; /* Add vertical scroll */
      }

      .sidebar {
          width: 100%;
      }

      .sidebar a {
          display: block;
          color: black;
          padding: 16px;
          text-decoration: none;
      }

      .sidebar a:hover {
          background-color: #ddd;
      }

      .content {
          margin-left: 200px;
          padding: 20px;
      }

      .dropdown-content {
          display: none;
          position: absolute;
          background-color: #f9f9f9;
          min-width: 160px;
          box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
          z-index: 1;
      }

      .dropdown-content a {
          color: black;
          padding: 12px 16px;
          text-decoration: none;
          display: block;
      }

      .dropdown-content a:hover {
          background-color: #ddd;
      }

      .dropdown:hover .dropdown-content {
          display: block;
      }
     

      /* Button styling */
  .content button {
      background-color: #4CAF50; /* Green */
      border: none;
      color: white;
      padding: 50px 82px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 40px;
      margin: 40px 20px;
      cursor: pointer;
      border-radius: 25px; /* Rounded corners */
      box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); /* Shadow effect */
      transition: background-color 0.3s, box-shadow 0.3s; /* Smooth transition */
  }

  /* Button hover effect */
  .content button:hover {
      background-color: #45a049; /* Darker green on hover */
      box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); /* Adjusted shadow effect on hover */
  }


  </style>


</head>
<body>
    <form id="form1" runat="server">
       

        <div class="sidebar-container">
             <div class="sidebar">
        <img src="Images/student.png" alt="Admin Picture" style="width: 100%; max-width: 150px; display: block; margin: 0 auto 20px;" />
        <a href="StudentProfile.aspx">Profile</a>
        <a href="StudentAttendance.aspx">Attendance</a>
        <a href="FeeInfo.aspx">Fee Info</a>
        </div>
        </div>


                 <div class="content">
                        <asp:Button ID="LogoutButton" runat="server" Text="Logout" OnClick="Logout_Click"  style="background-color: blue; color: white;padding: 10px 20px; font-size: 10px;" />
                 </div>
            

    </form>
</body>
</html>
