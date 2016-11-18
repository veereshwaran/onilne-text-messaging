using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS2
{
    public partial class afterLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void studinfoEntry_Click(object sender, EventArgs e)
        {
            Response.Redirect("frame1.html");
        }

        protected void Sendsms_Click(object sender, EventArgs e)
        {
            Response.Redirect("frame2.html");
        }

        protected void report_Click(object sender, EventArgs e)
        {
            Response.Redirect("report.aspx");
        }
    }
}