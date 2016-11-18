<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="afterLogin.aspx.cs" Inherits="SMS2.afterLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
       <title>Main Menu</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>

       <div id="wrapper">
        <div id="body">
            <div id="body-top">
                <div id="body-bot">
                    <div class="container">
                        <div class="main">
                            <h2> MENU </h2>

    <form id="form2" runat="server">
    <div>
        <asp:LinkButton ID="studinfoEntry" runat="server" OnClick="studinfoEntry_Click" >Student Info Entry</asp:LinkButton>
        <p>&nbsp</p>
    
        <asp:LinkButton ID="Sendsms" runat="server" OnClick="Sendsms_Click" >Send SMS</asp:LinkButton>
        <p>&nbsp</p>
        
        <asp:LinkButton ID="report" runat="server" OnClick="report_Click" >Reports</asp:LinkButton>
        <p>&nbsp</p>

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
