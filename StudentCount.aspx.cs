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
    public partial class StudentCount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayStudentCount();
            }
        }

        protected void DisplayStudentCount()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "SELECT TotalCount FROM StudentCount WHERE CounterName = 'TotalStudents'";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    object result = command.ExecuteScalar();

                    if (result != null)
                    {
                        int totalCount = Convert.ToInt32(result);
                        lblStudentCount.Text = "Total Students: " + totalCount.ToString();
                    }
                    else
                    {
                        lblStudentCount.Text = "Total Students: 0";
                    }
                }
            }
        }
    }
}