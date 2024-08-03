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
    public partial class TeacherAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set the current date in the date textbox
                txtDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
                txtTeacherCode.Text = Session["TeacherCode"] as string;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get values from text boxes
            int teacherCode;
            if (!int.TryParse(txtTeacherCode.Text, out teacherCode))
            {
                lblMessage.Text = "Invalid teacher ID.";
                return;
            }

            string date = txtDate.Text;

            // Your connection string
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            // SQL query to call the stored procedure
            string procedureName = "USP_InsertTeacherAttendance";

            // Establish connection and execute stored procedure
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(procedureName, connection))
                {
                    // Set command type as stored procedure
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters
                    command.Parameters.AddWithValue("@TeacherCode", teacherCode);
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