<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudents.aspx.cs" Inherits="SMS2.AddStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Roll No</title>
    <link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
</head>
<body>

    <div id="wrapper"> 
  <div id="body">
    <div id="body-top">
      <div id="body-bot">
    	<div class="container">
	  <div class="main">
		<h2>Student Entry</h2><hr/>
    <form id="form1" runat="server">
    <div>
         <table align="center" cellpadding = "10">
<!-----  Batch ---------------------------------------------------------->
<tr>
<td>BATCH</td>
<td>
    <asp:DropDownList ID="ddlBatch" runat="server"></asp:DropDownList>
</td>
</tr>

<!----- Roll No ---------------------------------------------------------->
<tr>
<td>ROLL NO</td>
<td>
    <asp:TextBox ID="txtRollno" runat="server"></asp:TextBox>
</td>
</tr>

<!----- Name ---------------------------------------------------------->
<tr>
<td>NAME</td>
<td>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
</td>
</tr>

<!----- Student Mobile Number ---------------------------------------------------------->
<tr>
<td>STUDENT MOBILE NUMBER</td>
<td>
    <asp:TextBox ID="txtStudentNo" runat="server"></asp:TextBox>
</td>
</tr>

<!----- Parent Mobile Number ---------------------------------------------------------->
<tr>
<td>PARENT MOBILE NUMBER</td>
<td>
    <asp:TextBox ID="txtParenNo" runat="server"></asp:TextBox>
</td>
</tr>

<!----- Submit and Reset ------------------------------------------------->
<tr>
<td colspan="2" align="center">
    <asp:Button ID="addStudent" runat="server" Text="ADD SUDENT" OnClick="addStudent_Click" />
</td>
</tr>


</table>

    </div>
    </form>

    	  </div>
	</div> 
        <div class="clear"></div>
      </div>
    </div>
  </div>  
  <div id="footer">
    <p>&copy; 2016 IRTT, Erode | designed by Batch 2012-2016 CSE </p>
  </div>
</div>

</body>
</html>

</body>
</html>
