using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace SMS2
{
    public partial class SendAbsentees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Batch bat = new Batch();

                BatchTableAdapters.batchTableAdapter batTableAdapter = new BatchTableAdapters.batchTableAdapter();

                batTableAdapter.Fill(bat.batch);

                ddlBatch.DataSource = bat.batch;
                ddlBatch.DataTextField = bat.batch.batchNameColumn.ColumnName;
                ddlBatch.DataBind();
                ddlBatch.Items.Insert(0, new ListItem("--Select Batch--", "0"));

                Branch bran = new Branch();

                BranchTableAdapters.branchTableAdapter branTableAdapter = new BranchTableAdapters.branchTableAdapter();

                branTableAdapter.Fill(bran.branch);

                ddlBranch.DataSource = bran.branch;
                ddlBranch.DataTextField = bran.branch.branchNameColumn.ColumnName;
                ddlBranch.DataBind();
                ddlBranch.Items.Insert(0, new ListItem("--Select Branch--", "0"));
            }
        }

        protected void toParents_Click(object sender, EventArgs e)
        {
            string[] rolls = Regex.Split(txtRollno.Text.Trim(), ",");

            selectparno selparno = new selectparno();

            selectparnoTableAdapters.groupparsendsmsTableAdapter parnoTableAdapter = new selectparnoTableAdapters.groupparsendsmsTableAdapter();

            foreach (string roll in rolls)
            {
                string status = string.Empty;

                string rollnum = "%" + ddlBranch.SelectedItem.Text + roll;

                string to = string.Empty;

                string name = string.Empty;

                parnoTableAdapter.Fill(selparno.groupparsendsms, rollnum, ddlBatch.SelectedItem.Text, out to, out name);

                string message = name + "(CSE DEPT) is Absent for today class by HOD CSE";

                using (System.Net.WebClient client = new System.Net.WebClient())
                {
                    string url = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=veereshwaran@ymail.com:934558191715&senderID=TEST SMS&receipientno=" + to + "&dcs=0&msgtxt=" + message + "&state=4";
                    string result = client.DownloadString(url);
                    Response.Write("<script>alert('" + url.ToString() + "');</script>");
                    if (result.Contains("Status=0"))
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Message is successfull')", true);
                        status = "Delivered";
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Message is not successfull')", true);
                        status = "Not Delivered";
                    }
                }
                sendabsentees sentabse = new sendabsentees();

                sendabsenteesTableAdapters.sentsmsstudTableAdapter tableAdapter = new sendabsenteesTableAdapters.sentsmsstudTableAdapter();

                tableAdapter.Fill(sentabse.sentsmsstud);

                sendabsentees.sentsmsstudRow rowSent = sentabse.sentsmsstud.NewsentsmsstudRow();

                //individualsmsstudent indsmsstud = new individualsmsstudent();

                //individualsmsstudentTableAdapters.sentsmsTableAdapter sentsmsstudTabAda = new individualsmsstudentTableAdapters.sentsmsTableAdapter();

                //sentsmsstudTabAda.Fill(indsmsstud.sentsms);

                //individualsmsstudent.sentsmsRow rowSent = indsmsstud.sentsms.NewsentsmsRow();

                rowSent.BeginEdit();

                rowSent.rollno = roll;

                rowSent.phNumber = to;

                rowSent.msg = message;

                rowSent.msgstatus = status;

                rowSent.EndEdit();

                tableAdapter.Update(sentabse.sentsmsstud);
                //sentsmsstudTabAda.Update(indsmsstud.sentsms);
            }
        }
    }
}