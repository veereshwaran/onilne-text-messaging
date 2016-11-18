<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="SMS2.Course1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Course</title>
<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />

</head>
<body>
    <div id="wrapper"> 
  <div id="body">
    <div id="body-top">
      <div id="body-bot">
    	<div class="container">
	  <div class="main">
		<h2>Course</h2><hr/>

    <form id="courestest" runat="server">
    <div>
    <table align="center" cellpadding = "10">


<!-----  course ---------------------------------------------------------->
<tr>
<td>COURSE</td>
<td>
    <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox>
</td>
</tr>

<!-----  UG/PG ---------------------------------------------------------->
<tr>
<td>UG/PG</td>  
<td>
    <asp:DropDownList ID="ddlUgpg" runat="server">
        <asp:ListItem>UG</asp:ListItem>
        <asp:ListItem>PG</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>

<!-----  Degree Name ---------------------------------------------------------->
<tr>
<td>Degree</td>
<td>
    <asp:DropDownList ID="ddlDegreeName" runat="server">
        </asp:DropDownList>
</td>
</tr

<!-----  Branch ---------------------------------------------------------->
<tr>
<td>Branch</td> 
<td>
    <asp:DropDownList ID="ddlBranchName" runat="server"></asp:DropDownList>
</td>
</tr>

<!-----  Duration ---------------------------------------------------------->
<tr>
<td>Duration</td>
<td> 
    <asp:DropDownList ID="ddlDuration" runat="server">
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
    </asp:DropDownList>

</td>
</tr>

<!-----  Submit ---------------------------------------------------------->
<tr>
<td colspan="2" align="center">  
  &nbsp;<asp:Button ID="ADD_Course" runat="server" Text="ADD" OnClick="Add_Course_To_Database" />
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
