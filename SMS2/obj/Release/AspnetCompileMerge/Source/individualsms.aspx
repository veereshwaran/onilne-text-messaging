<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="individualsms.aspx.cs" Inherits="SMS2.individual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Individual SMS</title>
<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
</head>

<body>

<div id="wrapper"> 
  <div id="body">
    <div id="body-top">
      <div id="body-bot">
    	<div class="container">
	  <div class="main">
		<h2>Individual SMS</h2><hr/>

<form id="individualsms" runat="server">
  <table align="center" cellpadding = "10">

<!-----  ROll Number ---------------------------------------------------------->
<tr>
<td>Roll Number</td>
<td> 
    <asp:TextBox ID="txtRollno" runat="server"></asp:TextBox>
</td>
</tr>

<!-----  Message ---------------------------------------------------------->
<tr>
<td>Message</td>
<td> 
    <asp:TextBox ID="txtMessage" TextMode="MultiLine" coloumns="50" Rows="5" MaxLength="160" runat="server"></asp:TextBox>
</td>
</tr>

<!-----  Submit ---------------------------------------------------------->
<tr>
<td colspan="2" align="center">
    <asp:Button ID="SentToStudent" runat="server" Text="To Student" OnClick="SentToStudent_Click" />
    <asp:Button ID="SentToParent" runat="server" Text="To Parent" OnClick="SentToParent_Click" />
</td>
</tr>
  </table> 
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
