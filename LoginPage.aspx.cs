using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Management
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            // Specify the table name in the query
            SqlCommand cmd = new SqlCommand("SELECT * FROM Users where Username=@Username and Password=@Password", conn);

            cmd.Parameters.AddWithValue("@userName", txtUserName.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
            SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
            DataTable dtUserList = new DataTable();
            sqlda.Fill(dtUserList);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();

            if (dtUserList.Rows.Count > 0)
            {
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                lblMessage.Text = "Your username/password is incorrect.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}