using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace School_Management
{


    public partial class Subject : System.Web.UI.Page
    {
        BLL_SubjectDetails objBLL_SubjectDetails = new BLL_SubjectDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetSubjectDetails();
            }
        }

        void GetSubjectDetails()
        {
            DataTable dtSubjects = null;
            dtSubjects = objBLL_SubjectDetails.GetSubjectdetails(hfSubjectID.Value == "" ? 0 : Convert.ToInt16(hfSubjectID.Value));

            if (dtSubjects.Rows.Count > 0)
            {
                gvSubjectDetails.DataSource = dtSubjects;
                gvSubjectDetails.DataBind();
            }
            else
            {
                dtSubjects.Rows.Add(dtSubjects.NewRow());
                gvSubjectDetails.DataSource = dtSubjects;
                gvSubjectDetails.DataBind();
                gvSubjectDetails.Rows[0].Cells.Clear();
                gvSubjectDetails.Rows[0].Cells.Add(new TableCell());
                gvSubjectDetails.Rows[0].Cells[0].ColumnSpan = dtSubjects.Columns.Count;
                gvSubjectDetails.Rows[0].Cells[0].Text = "Data not found...";
                gvSubjectDetails.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }

        protected void gvSubjectDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("Add"))
                {
                    string result = string.Empty;

                    int SubjectId = hfSubjectID.Value == "" ? 0 : Convert.ToInt16(hfSubjectID.Value);
                    int SubjectCode = Convert.ToInt32((gvSubjectDetails.FooterRow.FindControl("txtSubjectCode_Footer") as TextBox).Text);
                    string SubjectName = (gvSubjectDetails.FooterRow.FindControl("txtSubjectName_Footer") as TextBox).Text.Trim();
                  

                    result = objBLL_SubjectDetails.Add(SubjectId, SubjectCode, SubjectName);
                    GetSubjectDetails();
                    lblmessage.Text = result;
                }
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void gvSubjectDetails_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvSubjectDetails.EditIndex = e.NewEditIndex;
            GetSubjectDetails();
        }

        protected void gvSubjectDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvSubjectDetails.EditIndex = -1;
            GetSubjectDetails();
        }

        protected void gvSubjectDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string result = string.Empty;

                int SubjectId = hfSubjectID.Value == "" ? 0 : Convert.ToInt16(hfSubjectID.Value);
                int SubjectCode = Convert.ToInt32((gvSubjectDetails.Rows[e.RowIndex].FindControl("txtSubjectCode") as TextBox).Text.Trim());
                string SubjectName = (gvSubjectDetails.FooterRow.FindControl("txtSubjectName_Footer") as TextBox).Text.Trim();
         

                result = objBLL_SubjectDetails.Add(SubjectId, SubjectCode, SubjectName);
                gvSubjectDetails.EditIndex = -1;
                GetSubjectDetails();
                lblmessage.Text = result;
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void gvSubjectDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string result = string.Empty;
                int SubjectId = Convert.ToInt32(gvSubjectDetails.DataKeys[e.RowIndex].Value.ToString());
                result = objBLL_SubjectDetails.Delete(SubjectId);
                GetSubjectDetails();
                lblmessage.Text = result;
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}