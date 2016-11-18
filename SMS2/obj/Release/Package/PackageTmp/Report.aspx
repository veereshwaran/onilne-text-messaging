<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="SMS2.Report" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Report</title>
<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />

</head>
<body>
    <div id="wrapper"> 
  <div id="body">
    <div id="body-top">
      <div id="body-bot">
    	<div class="container">
	  <div class="main">
		<h2>Report</h2><hr/>
    <form id="report" runat="server">
    <div>
    <table align="center" cellpadding = "10">

<!-----  Report By Roll No ---------------------------------------------------------->
<tr>
<td>
    <asp:LinkButton ID="reportbyrollno" runat="server" OnClick="reportbyrollno_Click">Report by Roll Number</asp:LinkButton>
</td>
</tr>

<!-----  Report By Date ---------------------------------------------------------->
<tr>
<td>
    <asp:LinkButton ID="reportbydate" runat="server" OnClick="reportbydate_Click">Report by Date</asp:LinkButton>
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
