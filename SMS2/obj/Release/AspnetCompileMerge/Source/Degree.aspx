<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Degree.aspx.cs" Inherits="SMS2.Degree1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Degree</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
    <div id="wrapper"> 
  <div id="body">
    <div id="body-top">
      <div id="body-bot">
    	<div class="container">
	  <div class="main">
		<h2>Degree</h2><hr/>

    <form id="degreeForm" runat="server">
    <div>
        <table align="center">

<!-----  Degree Name ---------------------------------------------------------->
<tr>
<td>Degree</td> 
<td>
    <asp:Textbox ID="txtDegree" runat="server"></asp:Textbox>  
</td>    
<td>
    <asp:RadioButton ID="radioUg" Text="UG" runat="server" GroupName="ugorpg" />
    <asp:RadioButton ID="radioPg" Text="PG" runat="server" GroupName="ugorpg" />
</td>
</tr>

<!-----  Submit ---------------------------------------------------------->
<tr>
<td colspan="2" align="center" >
 <asp:Button Text="ADD" runat="server" OnClick="Submit" />

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
