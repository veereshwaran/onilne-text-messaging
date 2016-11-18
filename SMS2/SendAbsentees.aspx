<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendAbsentees.aspx.cs" Inherits="SMS2.SendAbsentees" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Group SMS</title>
<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />

</head>
<body>
    <div id="wrapper"> 
  <div id="body">
    <div id="body-top">
      <div id="body-bot">
    	<div class="container">
	  <div class="main">
		<h2>Send Absentees</h2><hr/>
    <form id="groupsms" runat="server">
    <div>
    <table align="center" cellpadding = "10">

<!-----  Batch Name ---------------------------------------------------------->
<tr>
<td>Batch</td>
<td>
    <asp:DropDownList ID="ddlBatch" runat="server"></asp:DropDownList>
</td>
</tr>

<!-----  Branch Name ---------------------------------------------------------->
<tr>
<td>Branch</td>
<td>
    <asp:DropDownList ID="ddlBranch" runat="server"></asp:DropDownList>
</td>
</tr>

<!-----  Roll NO ---------------------------------------------------------->
<tr>
<td>Roll No</td>
<td>
    <asp:TextBox ID="txtRollno" runat="server"></asp:TextBox>
</td>
</tr>

<!-----  Submit ---------------------------------------------------------->
<tr>
<td colspan="2" align="center">  
    <asp:Button ID="toParents" runat="server" Text="SEND" OnClick="toParents_Click" />
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
