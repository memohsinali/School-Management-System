using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Management
{
    public partial class GetSalary : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    LoadGetSalary();
                }
            }
            private void LoadGetSalary()
            {
                DataTable dtGetSalary = new DataTable();

                // Create an instance of the BLL_StudentTransport_Details class
                BLL_GetSalaryDetails objBLL_GetSalaryDetails = new BLL_GetSalaryDetails();

                // Call the method to get the students using transport
                dtGetSalary = objBLL_GetSalaryDetails.GetSalaryDetails();

                if (dtGetSalary.Rows.Count > 0)
                {
                    gvGetSalary.DataSource = dtGetSalary;
                    gvGetSalary.DataBind();
                }
                else
                {
                    // If no students found using transport, display a message
                    dtGetSalary.Rows.Add(dtGetSalary.NewRow());
                    gvGetSalary.DataSource = dtGetSalary;
                    gvGetSalary.DataBind();
                    int totalColumns = gvGetSalary.Rows[0].Cells.Count;
                    gvGetSalary.Rows[0].Cells.Clear();
                    gvGetSalary.Rows[0].Cells.Add(new TableCell());
                    gvGetSalary.Rows[0].Cells[0].ColumnSpan = totalColumns;
                    gvGetSalary.Rows[0].Cells[0].Text = "No Salary Entered.";
                    gvGetSalary.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }
            }
    }
}