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
    public partial class TeacherAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "SELECT * FROM TeacherBackupAccount WHERE TeacherCode = @TeacherCode AND Password = @Password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@TeacherCode", txtTeacherCode.Text.Trim());
                    command.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        // Teacher login successful
                        // Redirect to Teacher dashboard or any other page
                        Session["TeacherCode"] = txtTeacherCode.Text;
                        Response.Redirect("TeacherPage.aspx");
                    }
                    else
                    {
                        // Teacher login failed
                        lblMessage.Text = "Invalid Teacher Code or Password.";
                    }
                }
            }
        }
    }
}