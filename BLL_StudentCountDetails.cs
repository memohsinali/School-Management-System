using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace School_Management
{
    public class BLL_StudentCountDetails
    {

        // Connection string for your database
        private string connectionString = "MyConnectionString";

        public int GetTotalStudentCount()
        {
            int totalCount = 0;

            // SQL query to retrieve the total student count from the StudentCount table
            string query = "SELECT TotalCount FROM StudentCount WHERE CounterName = 'TotalStudents'";

            try
            {
                // Establish a connection to the database
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the connection
                    connection.Open();

                    // Create a command to execute the SQL query
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Execute the query and get the result
                        object result = command.ExecuteScalar();

                        // Check if the result is not null
                        if (result != null)
                        {
                            // Convert the result to integer
                            totalCount = Convert.ToInt32(result);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                // You can log the exception or throw it back to the caller
                throw ex;
            }

            return totalCount;
        }
    }
}