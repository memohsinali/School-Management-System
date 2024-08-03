using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace School_Management
{


    public partial class Student : System.Web.UI.Page
    {
        BLL_StudentDetails objBLL_StudentDetails = new BLL_StudentDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStudentDetails();
            }
        }

        void GetStudentDetails()
        {
            DataTable dtStudents = null;
            dtStudents = objBLL_StudentDetails.GetStudentdetails(hfStudentID.Value == "" ? 0 : Convert.ToInt16(hfStudentID.Value));

            if (dtStudents.Rows.Count > 0)
            {
                gvStudentDetails.DataSource = dtStudents;
                gvStudentDetails.DataBind();
            }
            else
            {
                dtStudents.Rows.Add(dtStudents.NewRow());
                gvStudentDetails.DataSource = dtStudents;
                gvStudentDetails.DataBind();
                gvStudentDetails.Rows[0].Cells.Clear();
                gvStudentDetails.Rows[0].Cells.Add(new TableCell());
                gvStudentDetails.Rows[0].Cells[0].ColumnSpan = dtStudents.Columns.Count;
                gvStudentDetails.Rows[0].Cells[0].Text = "Data not found...";
                gvStudentDetails.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }

        protected void gvStudentDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("Add"))
                {
                    string result = string.Empty;

                    int StudentId = hfStudentID.Value == "" ? 0 : Convert.ToInt16(hfStudentID.Value);
                    int StudentCode = Convert.ToInt32((gvStudentDetails.FooterRow.FindControl("txtStudentCode_Footer") as TextBox).Text);
                    string StudentName = (gvStudentDetails.FooterRow.FindControl("txtStudentName_Footer") as TextBox).Text.Trim();
                    string StudentEmail = (gvStudentDetails.FooterRow.FindControl("txtStudentEmail_Footer") as TextBox).Text.Trim();
                    string StudentAddress = (gvStudentDetails.FooterRow.FindControl("txtStudentAddress_Footer") as TextBox).Text.Trim();
                    string StudentGender = (gvStudentDetails.FooterRow.FindControl("txtStudentGender_Footer") as TextBox).Text.Trim();
                    string StudentBirthDate = (gvStudentDetails.FooterRow.FindControl("txtStudentBirthDate_Footer") as TextBox).Text.Trim();
                    string Transport = (gvStudentDetails.FooterRow.FindControl("txtTransport_Footer") as TextBox).Text.Trim();


                    result = objBLL_StudentDetails.Add(StudentId,StudentCode, StudentName, StudentEmail, StudentAddress, StudentGender, StudentBirthDate, Transport);
                    GetStudentDetails();
                    lblmessage.Text = result;
                }
            }
            catch (Exception ex)
            {
                string errorMessage = "Data not valid: " + ex.Message; // Create the error message
                                                                       // Store the error message in a log or database

                lblmessage.Text = ex.Message;
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void gvStudentDetails_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvStudentDetails.EditIndex = e.NewEditIndex;
            GetStudentDetails();
        }

        protected void gvStudentDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvStudentDetails.EditIndex = -1;
            GetStudentDetails();
        }

        protected void gvStudentDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string result = string.Empty;

                int StudentId = hfStudentID.Value == "" ? 0 : Convert.ToInt16(hfStudentID.Value);
                int StudentCode = Convert.ToInt32((gvStudentDetails.Rows[e.RowIndex].FindControl("txtStudentCode") as TextBox).Text.Trim());
                string StudentName = (gvStudentDetails.FooterRow.FindControl("txtStudentName_Footer") as TextBox).Text.Trim();
                string StudentEmail = (gvStudentDetails.FooterRow.FindControl("txtStudentEmail_Footer") as TextBox).Text.Trim();
                string StudentAddress = (gvStudentDetails.FooterRow.FindControl("txtStudentAddress_Footer") as TextBox).Text.Trim();
                string StudentGender = (gvStudentDetails.FooterRow.FindControl("txtStudentGender_Footer") as TextBox).Text.Trim();
                string StudentBirthDate = (gvStudentDetails.FooterRow.FindControl("txtStudentBirthDate_Footer") as TextBox).Text.Trim();
                string Transport = (gvStudentDetails.FooterRow.FindControl("txtTransport_Footer") as TextBox).Text.Trim();

                result = objBLL_StudentDetails.Add(StudentId, StudentCode, StudentName, StudentEmail, StudentAddress, StudentGender, StudentBirthDate, Transport);
                gvStudentDetails.EditIndex = -1;
                GetStudentDetails();
                lblmessage.Text = result;
            }
            catch (Exception ex)
            {
                lblmessage.Text = ex.Message;
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void gvStudentDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string result = string.Empty;
                int StudentId = Convert.ToInt32(gvStudentDetails.DataKeys[e.RowIndex].Value.ToString());
                result = objBLL_StudentDetails.Delete(StudentId);
                GetStudentDetails();
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