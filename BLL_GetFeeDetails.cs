using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace School_Management
{
    public class BLL_GetFeeDetails
    {
        // Get the connection string from Web.config
        string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        public DataTable GetFeeDetails()
        {
            // Initialize a DataTable to hold the result
            DataTable dtGetFee = new DataTable();

            // Create a connection to the database
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                // Create a SqlCommand to execute the stored procedure
                using (SqlCommand cmd = new SqlCommand("USP_GetFees", con))
                {
                    // Specify that the command is a stored procedure
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Open the connection
                    con.Open();

                    // Execute the command and fill the DataTable with the result
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dtGetFee);
                    }
                }
            }

            // Return the populated DataTable
            return dtGetFee;
        }
    }
}