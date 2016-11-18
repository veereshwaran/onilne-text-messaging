using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS2
{
    public partial class Branch1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            Branch bran = new Branch();

            BranchTableAdapters.branchTableAdapter branTableAdapter = new BranchTableAdapters.branchTableAdapter();
            
            branTableAdapter.Fill(bran.branch);

            Branch.branchRow rowBranch = bran.branch.NewbranchRow();

            rowBranch.BeginEdit();

            rowBranch.branchName = txtBranch.Text.Trim();

            rowBranch.EndEdit();

            bran.branch.AddbranchRow(rowBranch);

            branTableAdapter.Update(bran.branch);

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);
        }
    }
}