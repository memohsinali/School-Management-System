using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Management
{
    public partial class StudentTransport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStudentsUsingTransport();
            }
        }
        private void LoadStudentsUsingTransport()
        {
            DataTable dtStudentsUsingTransport = new DataTable();

            // Create an instance of the BLL_StudentTransport_Details class
            BLL_StudentTransportDetails objBLL_StudentTransport_Details = new BLL_StudentTransportDetails();

            // Call the method to get the students using transport
            dtStudentsUsingTransport = objBLL_StudentTransport_Details.GetStudentsUsingTransport();

            if (dtStudentsUsingTransport.Rows.Count > 0)
            {
                gvStudentsUsingTransport.DataSource = dtStudentsUsingTransport;
                gvStudentsUsingTransport.DataBind();
            }
            else
            {
                // If no students found using transport, display a message
                dtStudentsUsingTransport.Rows.Add(dtStudentsUsingTransport.NewRow());
                gvStudentsUsingTransport.DataSource = dtStudentsUsingTransport;
                gvStudentsUsingTransport.DataBind();
                int totalColumns = gvStudentsUsingTransport.Rows[0].Cells.Count;
                gvStudentsUsingTransport.Rows[0].Cells.Clear();
                gvStudentsUsingTransport.Rows[0].Cells.Add(new TableCell());
                gvStudentsUsingTransport.Rows[0].Cells[0].ColumnSpan = totalColumns;
                gvStudentsUsingTransport.Rows[0].Cells[0].Text = "No students are currently using transport.";
                gvStudentsUsingTransport.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
    }
}
