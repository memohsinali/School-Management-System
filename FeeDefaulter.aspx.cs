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
    public partial class FeeDefaulter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string month = txtMonth.Text;

            // Establish a connection to your SQL database
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string query = "EXEC USP_InsertFee @StudentCode, @Month";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);

                // Add parameters to the SQL query
                command.Parameters.AddWithValue("@Month", month);

                try
                {
                    // Open connection and execute query
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if the query was successful
                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Fee inserted successfully.";
                    }
                    else
                    {
                        lblMessage.Text = "Failed to insert fee.";
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