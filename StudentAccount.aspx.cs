
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace School_Management
{
    public partial class StudentAccount : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "SELECT * FROM StudentBackupAccount WHERE StudentCode = @StudentCode AND Password = @Password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@StudentCode", txtStudentCode.Text.Trim());
                    command.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        Session["StudentCode"] = txtStudentCode.Text;
                        Session["SessionCode"] = txtStudentCode;
                        Response.Redirect("StudentPage.aspx");
                    }
                    else
                    {
                        // Student login failed
                        lblMessage.Text = "Invalid Student Code or Password.";
                    }
                }
            }
        }
    }
}