using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS2
{
    public partial class getdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void viewReport_Click(object sender, EventArgs e)
        {
            reportbydate rep = new reportbydate();

            reportbydateTableAdapters.reportgroupdateTableAdapter TableAdapter = new reportbydateTableAdapters.reportgroupdateTableAdapter();

            string dat = txtDate.Text.Trim() + "%";

            TableAdapter.GetData(dat);

            
        }

        protected void viewsentsms_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtDate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}