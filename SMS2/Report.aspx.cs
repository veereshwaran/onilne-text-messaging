using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS2
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reportbyrollno_Click(object sender, EventArgs e)
        {
            Response.Redirect("getrollno.aspx");
        }

        protected void reportbydate_Click(object sender, EventArgs e)
        {
            Response.Redirect("getdate.aspx");
        }
    }
}