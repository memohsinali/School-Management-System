using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace School_Management
{
    public class BLL_DefaulterDetails
    {

        public static string Connectionstring()
        {
            string cstr;
            cstr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            return cstr;
        }

        public static SqlConnection sqlConnectionstring()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = Connectionstring();
            return conn;
        }

        public DataTable GetStudentdetails(int StudentId)
        {
            SqlConnection connetion = null;
            SqlCommand command = null;
            SqlDataAdapter sqlDA = null;
            DataTable dtStudents = null;

            using (connetion = sqlConnectionstring())
            {
                command = connetion.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "USP_GetStudentDetails";
                command.Parameters.Add("@StudentId", SqlDbType.Int).Value = StudentId;
                sqlDA = new SqlDataAdapter(command);
                dtStudents = new DataTable();
                sqlDA.Fill(dtStudents);
            }
            return dtStudents;
        }

        public string Add(int StudentId, int StudentCode, string StudentName, string Email, string StudentAddress, string StudentGender, string StudentBirthDate, string Transport)
        {
            string message = string.Empty;
            SqlConnection connection = null;
            SqlCommand command = null;

            using (connection = sqlConnectionstring())
            {
                command = connection.CreateCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "[dbo].[USP_INSERT_UPDATE_StudentDETAILS]";
                command.Parameters.Add("@StudentId", SqlDbType.Int).Value = StudentId;
                command.Parameters.Add("@StudentCode", SqlDbType.Int).Value = StudentCode;
                command.Parameters.Add("@StudentName", SqlDbType.VarChar).Value = StudentName;
                command.Parameters.Add("@StudentEmail", SqlDbType.VarChar).Value = Email;
                command.Parameters.Add("@StudentAddress", SqlDbType.VarChar).Value = StudentAddress;
                command.Parameters.Add("@StudentGender", SqlDbType.NChar).Value = StudentGender;
                command.Parameters.Add("@StudentBirthDate", SqlDbType.VarChar).Value = StudentBirthDate;
                command.Parameters.Add("@Transport", SqlDbType.NChar).Value = Transport;
                command.Parameters.Add("@message", SqlDbType.VarChar, 250).Direction = ParameterDirection.Output;

                connection.Open();
                command.ExecuteNonQuery();
                message = command.Parameters["@message"].Value.ToString();
                connection.Close();
            }
            return message;
        }
    }
}