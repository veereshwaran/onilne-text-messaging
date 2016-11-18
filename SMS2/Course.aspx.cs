using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS2
{
    public partial class Course1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownListsLoad();
        }

        protected void Add_Course_To_Database(object sender, EventArgs e)
        {
            Course cour = new Course();

            CourseTableAdapters.coursetestTableAdapter courseTableAdapter = new CourseTableAdapters.coursetestTableAdapter();

            courseTableAdapter.Fill(cour.coursetest);

            Course.coursetestRow rowCourse = cour.coursetest.NewcoursetestRow();

            rowCourse.BeginEdit();
            
            rowCourse.courseName = txtCourseName.Text.Trim();

            rowCourse.ugpg = ddlUgpg.SelectedItem.Text;

            rowCourse.degreeName = ddlDegreeName.SelectedItem.Text;

            rowCourse.BranchName = ddlBranchName.SelectedItem.Text;

            rowCourse.duration = ddlDuration.SelectedItem.Text;
            
            rowCourse.EndEdit();

            cour.coursetest.AddcoursetestRow(rowCourse);
            
            courseTableAdapter.Update(cour.coursetest);

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert is successfull')", true);            
        }
        protected void DropDownListsLoad()
        {
            if (!this.IsPostBack)
            {

                Degree deg = new Degree();

                DegreeTableAdapters.selectdegreeTableAdapter degreeTableAdapter = new DegreeTableAdapters.selectdegreeTableAdapter();

                degreeTableAdapter.Fill(deg.selectdegree);

                ddlDegreeName.DataSource = deg.selectdegree;
                ddlDegreeName.DataTextField = deg.selectdegree.degreeNameColumn.ColumnName;
                ddlDegreeName.DataBind();
                ddlDegreeName.Items.Insert(0, new ListItem("--Select Degree--", "0"));

                Branch bran = new Branch();

                BranchTableAdapters.branchTableAdapter branTabAda = new BranchTableAdapters.branchTableAdapter();

                branTabAda.Fill(bran.branch);

                ddlBranchName.DataSource = bran.branch;
                ddlBranchName.DataTextField = bran.branch.branchNameColumn.ColumnName;
                ddlBranchName.DataBind();
                ddlBranchName.Items.Insert(0, new ListItem("--Select Branch--", "0"));
            }
        }
    }
}