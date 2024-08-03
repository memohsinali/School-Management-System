using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Management
{
    public partial class SubjectList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDisplaySubjects();
            }
        }

        private void LoadDisplaySubjects()
        {
            DataTable dtDisplaySubjects = new DataTable();

            // Create an instance of the BLL_StudentTransport_Details class
            BLL_SubjectListDetails objBLL_SubjectList_Details = new BLL_SubjectListDetails();

            // Call the method to get the list of subjects
            dtDisplaySubjects = objBLL_SubjectList_Details.GetDisplaySubjects();

            if (dtDisplaySubjects.Rows.Count > 0)
            {
                gvSubjectList.DataSource = dtDisplaySubjects;
                gvSubjectList.DataBind();
            }
            else
            {
                // If no students found using transport, display a message
                dtDisplaySubjects.Rows.Add(dtDisplaySubjects.NewRow());
                gvSubjectList.DataSource = dtDisplaySubjects;
                gvSubjectList.DataBind();
                int totalColumns = gvSubjectList.Rows[0].Cells.Count;
                gvSubjectList.Rows[0].Cells.Clear();
                gvSubjectList.Rows[0].Cells.Add(new TableCell());
                gvSubjectList.Rows[0].Cells[0].ColumnSpan = totalColumns;
                gvSubjectList.Rows[0].Cells[0].Text = "No Subjects Offered Currently.";
                gvSubjectList.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
    }
}