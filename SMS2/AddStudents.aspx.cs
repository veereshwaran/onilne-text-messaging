using System;
using System.Data;
using System.Data.Common; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;

namespace SMS2
{
    public partial class AddStudents : System.Web.UI.Page
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
            }
        }

        protected void addStudent_Click(object sender, EventArgs e)
        {
            addstudent addstud = new addstudent();

            addstudentTableAdapters.phoneTableAdapter phoTableAdapter = new addstudentTableAdapters.phoneTableAdapter();

            phoTableAdapter.Fill(addstud.phone);

            addstudent.phoneRow rowStudent = addstud.phone.NewphoneRow();

            rowStudent.BeginEdit();

            rowStudent.batch = ddlBatch.SelectedItem.Text;

            rowStudent.rollNo = txtRollno.Text.Trim();

            rowStudent.studName = txtName.Text.Trim();

            rowStudent.studPh = txtStudentNo.Text.Trim();

            rowStudent.parPh = txtParenNo.Text.Trim();

            rowStudent.EndEdit();

            addstud.phone.AddphoneRow(rowStudent);

            phoTableAdapter.Update(addstud.phone);

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);
        }

        protected void fileUpload_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Datatable ')", true);
            String Excel_Path = st;
        }
        }
    }