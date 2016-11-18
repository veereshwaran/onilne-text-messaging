using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS2
{
    public partial class individual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SentToStudent_Click(object sender, EventArgs e)
        {

            string pho = string.Empty;

            studentno studno = new studentno();

            studentnoTableAdapters.studentnumberTableAdapter studnoTableAdapter = new studentnoTableAdapters.studentnumberTableAdapter();
            
            studnoTableAdapter.Fill(studno.studentnumber, txtRollno.Text.Trim(), out pho);

            using (System.Net.WebClient client = new System.Net.WebClient())
            {
                string status = string.Empty;
                
                string url = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=veereshwaran@ymail.com:934558191715&senderID=TEST SMS&receipientno=" + pho + "&dcs=0&msgtxt=" + txtMessage.Text + "&state=4";

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
                    status = "Not delivered";
                }
                individualsmsstudent indsmsstudent = new individualsmsstudent();

                individualsmsstudentTableAdapters.sentsmsTableAdapter sentsmsTableAdapter = new individualsmsstudentTableAdapters.sentsmsTableAdapter();

                sentsmsTableAdapter.Fill(indsmsstudent.sentsms);

                individualsmsstudent.sentsmsRow rowSentsms = indsmsstudent.sentsms.NewsentsmsRow();

                rowSentsms.BeginEdit();
                
                rowSentsms.rollno = txtRollno.Text.Trim();

                rowSentsms.phNumber = pho;

                rowSentsms.msg = txtMessage.Text.Trim();

                rowSentsms.msgstatus = status;

                rowSentsms.EndEdit();

                indsmsstudent.sentsms.AddsentsmsRow(rowSentsms);

                sentsmsTableAdapter.Update(indsmsstudent.sentsms);
            }
        }

        protected void SentToParent_Click(object sender, EventArgs e)
        {
            string pho = string.Empty;

            parentno parno = new parentno();

            parentnoTableAdapters.parentnumberTableAdapter parentTableAdapter = new parentnoTableAdapters.parentnumberTableAdapter();

            parentTableAdapter.Fill(parno.parentnumber, txtRollno.Text.Trim(), out pho);

            using (System.Net.WebClient client = new System.Net.WebClient())
            {
                string status = string.Empty;

                string url = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=veereshwaran@ymail.com:934558191715&senderID=TEST SMS&receipientno=" + pho + "&dcs=0&msgtxt=" + txtMessage.Text.Trim() + "&state=4";

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
                    status = "Not delivered";
                }

                individualsmsparent indpar = new individualsmsparent();

                individualsmsparentTableAdapters.sentsmsTableAdapter sentTableAdapter = new individualsmsparentTableAdapters.sentsmsTableAdapter();

                sentTableAdapter.Fill(indpar.sentsms);

                individualsmsparent.sentsmsRow rowSent = indpar.sentsms.NewsentsmsRow();

                rowSent.BeginEdit();

                rowSent.rollno = txtRollno.Text.Trim();

                rowSent.phNumber = pho;

                rowSent.msg = txtMessage.Text.Trim();

                rowSent.msgstatus = status;

                rowSent.EndEdit();

                indpar.sentsms.AddsentsmsRow(rowSent);

                sentTableAdapter.Update(indpar.sentsms);
            }
        }
    }
}