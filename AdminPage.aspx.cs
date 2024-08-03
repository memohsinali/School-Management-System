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
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call a method to fetch and display the student count
                DisplayStudentCount();
            }
        }

        protected void btnStudentCount_Click(object sender, EventArgs e)
        {
            // Redirect to the StudentCountPage.aspx
            Response.Redirect("~/StudentCount.aspx");
        }

        protected void btnTeacherCount_Click(object sender, EventArgs e)
        {
            // Redirect to the StudentCountPage.aspx
            Response.Redirect("~/TeacherCount.aspx");
        }

        protected void btnSubjectList_Click(object sender, EventArgs e)
        {
            // Redirect to the StudentCountPage.aspx
            Response.Redirect("~/SubjectList.aspx");
        }


        protected void btnRefreshStudentCount_Click(object sender, EventArgs e)
        {
            // Call the getStudentCount method to refresh the student count
            getStudentCount();
        }


        protected void btnRefreshTeacherCount_Click(object sender, EventArgs e)
        {
            // Call the getStudentCount method to refresh the student count
            getTeacherCount();
        }

        protected void DisplayStudentCount()
        {
            // Connection string to your database
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            // SQL query to fetch the student count
            string query = "SELECT TotalCount FROM StudentCount WHERE CounterName = 'TotalStudents'";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    object result = command.ExecuteScalar();

                    // Check if result is not null and cast it to int
                    if (result != null)
                    {
                        int totalCount = Convert.ToInt32(result);
                        lblTotalStudents.Text = "Total Students: " + totalCount.ToString();
                    }
                    else
                    {
                        lblTotalStudents.Text = "Total Students: 0";
                    }
                }
            }
        }



        protected void DisplayTeacherCount()
        {
            // Connection string to your database
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            // SQL query to fetch the student count
            string query = "SELECT TotalCount FROM TeacherCount WHERE CounterName = 'TotalTeachers'";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    object result = command.ExecuteScalar();

                    // Check if result is not null and cast it to int
                    if (result != null)
                    {
                        int totalCount = Convert.ToInt32(result);
                        lblTotalStudents.Text = "Total Teachers: " + totalCount.ToString();
                    }
                    else
                    {
                        lblTotalStudents.Text = "Total Teachers: 0";
                    }
                }
            }
        }


        protected void getStudentCount()
        {
            // Call the DisplayStudentCount method to refresh the student count
            DisplayStudentCount();
        }

        protected void getTeacherCount()
        {
            // Call the DisplayStudentCount method to refresh the student count
            DisplayTeacherCount();
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            // Clear session
            Session.Clear();

            // Redirect to login page
            Response.Redirect("sms.aspx");
        }
    }
}