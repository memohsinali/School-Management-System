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
    public partial class GetFee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGetFee();
            }
        }
        private void LoadGetFee()
        {
            DataTable dtGetFee = new DataTable();

            // Create an instance of the BLL_StudentTransport_Details class
            BLL_GetFeeDetails objBLL_GetFeeDetails = new BLL_GetFeeDetails();

            // Call the method to get the students using transport
            dtGetFee = objBLL_GetFeeDetails.GetFeeDetails();

            if (dtGetFee.Rows.Count > 0)
            {
                gvGetFee.DataSource = dtGetFee;
                gvGetFee.DataBind();
            }
            else
            {
                // If no students found using transport, display a message
                dtGetFee.Rows.Add(dtGetFee.NewRow());
                gvGetFee.DataSource = dtGetFee;
                gvGetFee.DataBind();
                int totalColumns = gvGetFee.Rows[0].Cells.Count;
                gvGetFee.Rows[0].Cells.Clear();
                gvGetFee.Rows[0].Cells.Add(new TableCell());
                gvGetFee.Rows[0].Cells[0].ColumnSpan = totalColumns;
                gvGetFee.Rows[0].Cells[0].Text = "No Fee Entered.";
                gvGetFee.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
    }
}