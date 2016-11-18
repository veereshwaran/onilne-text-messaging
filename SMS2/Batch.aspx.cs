using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS2
{
    public partial class Batch1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addbatch_Click(object sender, EventArgs e)
        {
            Batch bat = new Batch();

            BatchTableAdapters.batchTableAdapter batTableAdapter = new BatchTableAdapters.batchTableAdapter();

            batTableAdapter.Fill(bat.batch);

            Batch.batchRow rowBatch = bat.batch.NewbatchRow();

            rowBatch.BeginEdit();

            rowBatch.batchName = txtBatch.Text.Trim();

            rowBatch.EndEdit();

            bat.batch.AddbatchRow(rowBatch);

            batTableAdapter.Update(bat.batch);

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);
        }
    }
}