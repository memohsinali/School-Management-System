using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace School_Management
{
    public class BLL_GetSalaryDetails
    {
        // Get the connection string from Web.config
        string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        public DataTable GetSalaryDetails()
        {
            // Initialize a DataTable to hold the result
            DataTable dtGetSalary = new DataTable();

            // Create a connection to the database
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                // Create a SqlCommand to execute the stored procedure
                using (SqlCommand cmd = new SqlCommand("USP_GetSalary", con))
                {
                    // Specify that the command is a stored procedure
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Open the connection
                    con.Open();

                    // Execute the command and fill the DataTable with the result
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dtGetSalary);
                    }
                }
            }

            // Return the populated DataTable
            return dtGetSalary;
        }
    }
}