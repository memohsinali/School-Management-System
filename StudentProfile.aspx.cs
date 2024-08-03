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
    public partial class StudentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the value from the session variable
                string studentCode = Session["StudentCode"] as string;
                lblStudentCode.Text = "<b>Student Code: " + studentCode;

                // Establish a connection to your SQL database
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                string query = "SELECT * FROM Students WHERE StudentCode = @StudentCode";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Write your SQL query to retrieve student details based on the student code
                    

                    // Create a SqlCommand object with the SQL query and connection
                    SqlCommand command = new SqlCommand(query, connection);

                    // Add parameters to the SQL query (to prevent SQL injection)
                    command.Parameters.AddWithValue("@StudentCode", studentCode);

                    try
                    {
                        // Open the database connection
                        connection.Open();

                        // Execute the SQL query and retrieve the data
                        SqlDataReader reader = command.ExecuteReader();

                        // Check if the query returned any rows
                        if (reader.HasRows)
                        {
                            // Read the first row
                            reader.Read();

                            // Retrieve student details from the database
                            string studentName = reader["StudentName"].ToString();
                            string studentEmail = reader["StudentEmail"].ToString();
                            string studentAddress = reader["StudentAddress"].ToString();
                            string studentGender = reader["StudentGender"].ToString();
                            DateTime studentBirthDate = Convert.ToDateTime(reader["StudentBirthDate"]);
                            string transport = reader["Transport"].ToString();

                            // Display the student details on your webpage
                            lblStudentDetails.Text = 
                                                      "<br/><b>Student Name</b>: " + studentName + "<br/>" +
                                                      "<b>Student Email</b>: " + studentEmail + "<br/>" +
                                                      "<b>Student Address<b/>: " + studentAddress + "<br/>" +
                                                      "<b>Student Gender</b>: " + studentGender + "<br/>" +
                                                      "<b>Student Birth Date</b>: " + studentBirthDate.ToShortDateString() + "<br/>" +
                                                      "<b>Transport</b>: " + transport;

                        }
                        else
                        {
                            // If no rows were returned, display a message indicating that the student code was not found
                            lblStudentDetails.Text = "Student with code " + studentCode + " not found.";
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions
                        lblStudentDetails.Text = "Error: " + ex.Message;
                    }
                }
            }
        }
    }
}