<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Branch.aspx.cs" Inherits="SMS2.Branch1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <title>Branch</title>
    <link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
</head>
<body>

    <div id="wrapper"> 
  <div id="body">
    <div id="body-top">
      <div id="body-bot">
    	<div class="container">
	  <div class="main">
		<h2>Branch</h2><hr/>

    <form id="branchForms" runat="server">
    <div>
      <table align="center" cellpadding = "10">


 
<!-----  Branch ---------------------------------------------------------->
<tr>
<td>Branch</td>
<td>
    <asp:TextBox ID="txtBranch" runat="server"></asp:TextBox>
</td>
</tr>


<!-----  Submit ---------------------------------------------------------->
<tr>
<td colspan="2" align="center">
    <asp:Button ID="ADD" runat="server" Text="ADD" OnClick="ADD_Click" />
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
