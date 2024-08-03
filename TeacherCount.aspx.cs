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
    public partial class TeacherCount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayTeacherCount();
            }
        }

        protected void DisplayTeacherCount()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "SELECT TotalCount FROM TeacherCount WHERE CounterName = 'TotalTeachers'";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    object result = command.ExecuteScalar();

                    if (result != null)
                    {
                        int totalCount = Convert.ToInt32(result);
                        lblTeacherCount.Text = "Total Teachers: " + totalCount.ToString();
                    }
                    else
                    {
                        lblTeacherCount.Text = "Total Teachers: 0";
                    }
                }
            }
        }
    }
}