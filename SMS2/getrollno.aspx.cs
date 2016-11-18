using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS2
{
    public partial class getrollno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void viewReport_Click(object sender, EventArgs e)
        {
            reportbyrollno reprollno = new reportbyrollno();

            reportbyrollnoTableAdapters.reportgrouprollnoTableAdapter reprollTableAdapter = new reportbyrollnoTableAdapters.reportgrouprollnoTableAdapter();

            reprollTableAdapter.GetData(txtRollno.Text.Trim());
        }

        protected void viewsentsms_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}