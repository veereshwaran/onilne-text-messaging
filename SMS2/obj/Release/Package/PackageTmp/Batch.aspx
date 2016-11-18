<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Batch.aspx.cs" Inherits="SMS2.Batch1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Batch</title>
<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
</head>
<body>

<div id="wrapper"> 
  <div id="body">
    <div id="body-top">
      <div id="body-bot">
    	<div class="container">
	  <div class="main">
		<h2>Batch</h2><hr/>

    <form id="batchForm" runat="server">
    <div>
         <table align="center" cellpadding = "10">
<!-----  Batch ---------------------------------------------------------->
<tr>
<td>Batch</td>
<td>
    <asp:TextBox ID="txtBatch" runat="server"></asp:TextBox>
</td>
</tr>
<!-----  Submit ---------------------------------------------------------->
<tr>
<td colspan="2" align="center">
    <asp:Button ID="addbatch" runat="server" Text="ADD" OnClick="addbatch_Click" />
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
