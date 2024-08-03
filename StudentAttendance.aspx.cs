using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Management
{
    public partial class StudentAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the current date in the date textbox
            txtDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            txtStudentCode.Text = Session["StudentCode"] as string;

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get values from text boxes
            int studentCode;
            if (!int.TryParse(txtStudentCode.Text, out studentCode))
            {
                lblMessage.Text = "Invalid student code.";
                return;
            }

            string date = txtDate.Text;

            // Your connection string
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            // SQL query to call the stored procedure
            string procedureName = "USP_InsertStudentAttendance";

            // Establish connection and execute stored procedure
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(procedureName, connection))
                {
                    // Set command type as stored procedure
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters
                    command.Parameters.AddWithValue("@StudentCode", studentCode);
                    command.Parameters.AddWithValue("@Date", date);

                    try
                    {
                        // Open connection and execute stored procedure
                        connection.Open();
                        command.ExecuteNonQuery();

                        // If execution reaches here, the attendance was logged successfully
                        lblMessage.Text = "Attendance logged successfully.";
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions
                        lblMessage.Text = "Error: " + ex.Message;
                    }
                }
            }
        }

    }
}