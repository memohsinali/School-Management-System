using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace School_Management
{


    public partial class Teacher : System.Web.UI.Page
    {
        BLL_TeacherDetails objBLL_TeacherDetails = new BLL_TeacherDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetTeacherDetails();
            }
        }

        void GetTeacherDetails()
        {
            DataTable dtTeachers = null;
            dtTeachers = objBLL_TeacherDetails.GetTeacherdetails(hfTeacherID.Value == "" ? 0 : Convert.ToInt16(hfTeacherID.Value));

            if (dtTeachers.Rows.Count > 0)
            {
                gvTeacherDetails.DataSource = dtTeachers;
                gvTeacherDetails.DataBind();
            }
            else
            {
                dtTeachers.Rows.Add(dtTeachers.NewRow());
                gvTeacherDetails.DataSource = dtTeachers;
                gvTeacherDetails.DataBind();
                gvTeacherDetails.Rows[0].Cells.Clear();
                gvTeacherDetails.Rows[0].Cells.Add(new TableCell());
                gvTeacherDetails.Rows[0].Cells[0].ColumnSpan = dtTeachers.Columns.Count;
                gvTeacherDetails.Rows[0].Cells[0].Text = "Data not found...";
                gvTeacherDetails.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }

        protected void gvTeacherDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("Add"))
                {
                    string result = string.Empty;

                    int TeacherId = hfTeacherID.Value == "" ? 0 : Convert.ToInt16(hfTeacherID.Value);
                    int TeacherCode = Convert.ToInt32((gvTeacherDetails.FooterRow.FindControl("txtTeacherCode_Footer") as TextBox).Text);
                    string TeacherName = (gvTeacherDetails.FooterRow.FindControl("txtTeacherName_Footer") as TextBox).Text.Trim();
                    string TeacherEmail = (gvTeacherDetails.FooterRow.FindControl("txtTeacherEmail_Footer") as TextBox).Text.Trim();
                    string TeacherAddress = (gvTeacherDetails.FooterRow.FindControl("txtTeacherAddress_Footer") as TextBox).Text.Trim();
                    string TeacherGender = (gvTeacherDetails.FooterRow.FindControl("txtTeacherGender_Footer") as TextBox).Text.Trim();
                    string TeacherBirthDate = (gvTeacherDetails.FooterRow.FindControl("txtTeacherBirthDate_Footer") as TextBox).Text.Trim();
                    int Subject= Convert.ToInt32((gvTeacherDetails.FooterRow.FindControl("txtSubjectCode_Footer") as TextBox).Text);
                    string Transport = (gvTeacherDetails.FooterRow.FindControl("txtTransport_Footer") as TextBox).Text.Trim();


                    result = objBLL_TeacherDetails.Add(TeacherId, TeacherCode, TeacherName, TeacherEmail, TeacherAddress, TeacherGender, TeacherBirthDate, Subject,Transport);
                    GetTeacherDetails();
                    lblmessage.Text = result;
                }
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void gvTeacherDetails_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvTeacherDetails.EditIndex = e.NewEditIndex;
            GetTeacherDetails();
        }

        protected void gvTeacherDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvTeacherDetails.EditIndex = -1;
            GetTeacherDetails();
        }

        protected void gvTeacherDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string result = string.Empty;

                int TeacherId = hfTeacherID.Value == "" ? 0 : Convert.ToInt16(hfTeacherID.Value);
                int TeacherCode = Convert.ToInt32((gvTeacherDetails.Rows[e.RowIndex].FindControl("txtTeacherCode") as TextBox).Text.Trim());
                string TeacherName = (gvTeacherDetails.FooterRow.FindControl("txtTeacherName_Footer") as TextBox).Text.Trim();
                string TeacherEmail = (gvTeacherDetails.FooterRow.FindControl("txtTeacherEmail_Footer") as TextBox).Text.Trim();
                string TeacherAddress = (gvTeacherDetails.FooterRow.FindControl("txtTeacherAddress_Footer") as TextBox).Text.Trim();
                string TeacherGender = (gvTeacherDetails.FooterRow.FindControl("txtTeacherGender_Footer") as TextBox).Text.Trim();
                string TeacherBirthDate = (gvTeacherDetails.FooterRow.FindControl("txtTeacherBirthDate_Footer") as TextBox).Text.Trim();
                int SubjectCode = Convert.ToInt32((gvTeacherDetails.FooterRow.FindControl("txtSubjectCode_Footer") as TextBox).Text);
                string Transport = (gvTeacherDetails.FooterRow.FindControl("txtTransport_Footer") as TextBox).Text.Trim();

                result = objBLL_TeacherDetails.Add(TeacherId, TeacherCode, TeacherName, TeacherEmail, TeacherAddress, TeacherGender, TeacherBirthDate,SubjectCode, Transport);
                gvTeacherDetails.EditIndex = -1;
                GetTeacherDetails();
                lblmessage.Text = result;
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void gvTeacherDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string result = string.Empty;
                int TeacherId = Convert.ToInt32(gvTeacherDetails.DataKeys[e.RowIndex].Value.ToString());
                result = objBLL_TeacherDetails.Delete(TeacherId);
                GetTeacherDetails();
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