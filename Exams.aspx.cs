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
    public partial class Exams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string subjectCode = txtSubjectCode.Text;
            string subjectName = txtSubjectName.Text;
            string examDate = txtExamDate.Text;
            string examType = txtExamType.Text;


            // Establish a connection to your SQL database
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "EXEC USP_InsertExam @SubjectCode, @SubjectName, @ExamDate,@ExamType";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                // Add parameters to the SQL query
                command.Parameters.AddWithValue("@SubjectCode", subjectCode);
                command.Parameters.AddWithValue("@SubjectName", subjectName);

                command.Parameters.AddWithValue("@ExamDate", examDate);
                command.Parameters.AddWithValue("@ExamType", examType);


                try
                {
                    // Open connection and execute query
                   // connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if the query was successful
                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Exam inserted successfully.";
                    }
                    else
                    {
                        lblMessage.Text = "Failed to insert exam.";
                    }
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