using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS2
{
    public partial class Degree1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit(object sender, EventArgs e)
        {
            Degree degDS = new Degree();

            DegreeTableAdapters.selectdegreeTableAdapter degTableAdapter = new DegreeTableAdapters.selectdegreeTableAdapter();

            degTableAdapter.Fill(degDS.selectdegree);

            string ugorpg = string.Empty;
            if (radioUg.Checked)
            {
                ugorpg = "UG";
            }
            else if (radioPg.Checked)
            {
                ugorpg = "PG";
            }

            degTableAdapter.Insert(txtDegree.Text.Trim(),ugorpg);

            //Degree.selectdegreeRow rowDegree = degDS.selectdegree.NewselectdegreeRow();

            //rowDegree.degreeName = txtDegree.Text.Trim();

            //rowDegree.ugpg = ugorpg;

            //degDS.selectdegree.Rows.Add(rowDegree);

            //degTableAdapter.Update(degDS.selectdegree);

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);
        }

       
    }
}