<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getrollno.aspx.cs" Inherits="SMS2.getrollno" %>

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
        <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

    <table align="center" cellpadding = "10">

<!-----  Roll No ---------------------------------------------------------->
<tr>
<td>Enter Roll No</td>
<td>
    <asp:TextBox ID="txtRollno" runat="server"></asp:TextBox>
</td>
</tr>

<!-----  Submit ---------------------------------------------------------->
<tr>
<td colspan="2" align="center">
    <asp:Button ID="viewReport" runat="server" Text="View Report" OnClick="viewReport_Click" />
</td>
</tr>

<tr>
    <td colspan = "3" align ="center">
       <asp:GridView ID="viewsentsms" runat="server" OnSelectedIndexChanged="viewsentsms_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idsentsms" DataSourceID="ObjectDataSource2">
            <Columns>
                <asp:BoundField DataField="idsentsms" HeaderText="Sl. No" InsertVisible="False" ReadOnly="True" SortExpression="idsentsms" />
                <asp:BoundField DataField="sentdate" HeaderText="Sent Date" SortExpression="sentdate" />
                <asp:BoundField DataField="rollno" HeaderText="Roll No" SortExpression="rollno" />
                <asp:BoundField DataField="studentorParent" HeaderText="Student or Parent" SortExpression="studentorParent" />
                <asp:BoundField DataField="phNumber" HeaderText="Phone Number" SortExpression="phNumber" />
                <asp:BoundField DataField="msg" HeaderText="Message" SortExpression="msg" />
                <asp:BoundField DataField="msgstatus" HeaderText="Message Status" SortExpression="msgstatus" />
            </Columns>
        </asp:GridView>

        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SMS2.reportbyrollnoTableAdapters.reportgrouprollnoTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtRollno" DefaultValue="12cse43" Name="roll" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SMS2.reportgrouprollnoTableAdapters.reportgrouprollnoTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtRollno" DefaultValue="12cse43" Name="roll" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        &nbsp;</td>
        </tr>
</table>

    </ContentTemplate>
</asp:UpdatePanel>

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
