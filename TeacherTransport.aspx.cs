using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Management
{
    public partial class TeacherTransport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTeachersUsingTransport();
            }
        }
        private void LoadTeachersUsingTransport()
        {
            DataTable dtTeachersUsingTransport = new DataTable();

            // Create an instance of the BLL_TeacherTransport_Details class
            BLL_TeacherTransportDetails objBLL_TeacherTransport_Details = new BLL_TeacherTransportDetails();

            // Call the method to get the Teachers using transport
            dtTeachersUsingTransport = objBLL_TeacherTransport_Details.GetTeachersUsingTransport();

            if (dtTeachersUsingTransport.Rows.Count > 0)
            {
                gvTeachersUsingTransport.DataSource = dtTeachersUsingTransport;
                gvTeachersUsingTransport.DataBind();
            }
            else
            {
                // If no Teachers found using transport, display a message
                dtTeachersUsingTransport.Rows.Add(dtTeachersUsingTransport.NewRow());
                gvTeachersUsingTransport.DataSource = dtTeachersUsingTransport;
                gvTeachersUsingTransport.DataBind();
                int totalColumns = gvTeachersUsingTransport.Rows[0].Cells.Count;
                gvTeachersUsingTransport.Rows[0].Cells.Clear();
                gvTeachersUsingTransport.Rows[0].Cells.Add(new TableCell());
                gvTeachersUsingTransport.Rows[0].Cells[0].ColumnSpan = totalColumns;
                gvTeachersUsingTransport.Rows[0].Cells[0].Text = "No Teachers are currently using transport.";
                gvTeachersUsingTransport.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
    }
}