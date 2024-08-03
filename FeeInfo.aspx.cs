using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Management
{
    public partial class FeeInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the student is logged in
            if (Session["StudentCode"] != null)
            {
                // Retrieve the student code from the session
                int studentCode = Convert.ToInt32(Session["StudentCode"]);

                // Call a method to retrieve fee information for the student
                DisplayStudentFees(studentCode);
            }
            else
            {
                // Redirect to the login page if the student is not logged in
                Response.Redirect("LoginPage.aspx");
            }
        }

        private void DisplayStudentFees(int studentCode)
        {
            // Define connection string and query
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "SELECT Month FROM Fees WHERE StudentCode = @StudentCode";

            // Create connection and command objects
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameter for student code
                    command.Parameters.AddWithValue("@StudentCode", studentCode);

                    // Open connection and execute command
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    // Bind the result to a GridView or other UI element
                    if (reader.HasRows)
                    {
                        // If fees found, bind the result to a GridView or display it in any other way you prefer
                        GridView1.DataSource = reader;
                        GridView1.DataBind();
                    }
                    else
                    {
                        // If no fees found, display a message or handle it accordingly
                        lblMessage.Text = "No fee information available.";
                    }
                }
            }
        }
    }
}