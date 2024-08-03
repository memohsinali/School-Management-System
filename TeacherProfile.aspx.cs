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
    public partial class TeacherProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the value from the session variable
                string TeacherCode = Session["TeacherCode"] as string;
                lblTeacherCode.Text = "<b>Teacher Code: " + TeacherCode;

                // Establish a connection to your SQL database
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                string query = "SELECT * FROM Teachers WHERE TeacherCode = @TeacherCode";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Write your SQL query to retrieve Teacher details based on the Teacher code


                    // Create a SqlCommand object with the SQL query and connection
                    SqlCommand command = new SqlCommand(query, connection);

                    // Add parameters to the SQL query (to prevent SQL injection)
                    command.Parameters.AddWithValue("@TeacherCode", TeacherCode);

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

                            // Retrieve Teacher details from the database
                            string TeacherName = reader["TeacherName"].ToString();
                            string TeacherEmail = reader["TeacherEmail"].ToString();
                            string TeacherAddress = reader["TeacherAddress"].ToString();
                            string TeacherGender = reader["TeacherGender"].ToString();
                            DateTime TeacherBirthDate = Convert.ToDateTime(reader["TeacherBirthDate"]);
                            string transport = reader["Transport"].ToString();

                            // Display the Teacher details on your webpage
                            lblTeacherDetails.Text =
                                                      "<br/>Teacher Name: " + TeacherName + "<br/>" +
                                                      "Teacher Email: " + TeacherEmail + "<br/>" +
                                                      "Teacher Address: " + TeacherAddress + "<br/>" +
                                                      "Teacher Gender: " + TeacherGender + "<br/>" +
                                                      "Teacher Birth Date: " + TeacherBirthDate.ToShortDateString() + "<br/>" +
                                                      "Transport: " + transport;

                        }
                        else
                        {
                            // If no rows were returned, display a message indicating that the Teacher code was not found
                            lblTeacherDetails.Text = "Teacher with code " + TeacherCode + " not found.";
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions
                        lblTeacherDetails.Text = "Error: " + ex.Message;
                    }
                }
            }
        }
    }
}