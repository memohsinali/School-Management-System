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
    public partial class Salary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get values from text boxes
            string teacherCode = txtTeacherCode.Text;
            string month = txtMonth.Text;

            // Your connection string
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            // SQL query to insert salary
            string query = "EXEC USP_InsertSalary @TeacherCode, @Month";

            // Establish connection and execute query
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters
                    command.Parameters.AddWithValue("@TeacherCode", teacherCode);
                    command.Parameters.AddWithValue("@Month", month);

                    try
                    {
                        // Open connection and execute query
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if the query was successful
                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Salary inserted successfully.";
                        }
                        else
                        {
                            lblMessage.Text = "Failed to insert salary.";
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions
                        lblMessage.Text = "Error: " + ex;
                    }
                }
            }
        }
    }

}