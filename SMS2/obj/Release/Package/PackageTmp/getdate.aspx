<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getdate.aspx.cs" Inherits="SMS2.getdate" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

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

<!-----  Report Date ---------------------------------------------------------->
<tr>
<td>Enter Date</td>
<td>
    <asp:TextBox ID="txtDate" runat="server" OnTextChanged="txtDate_TextChanged"></asp:TextBox>
</td>
<td>YYYY-MM-DD</td>
</tr>

<!-----  Submit ---------------------------------------------------------->
<tr>
<td colspan="3" align="center">
    <asp:Button ID="viewReport" runat="server" Text="View Report" OnClick="viewReport_Click" />
</td>
</tr>

<tr>
    <td colspan ="3" align ="center">

        <asp:GridView ID="viewsentsms" runat="server" OnSelectedIndexChanged="viewsentsms_SelectedIndexChanged" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idsentsms" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="idsentsms" HeaderText="idsentsms" InsertVisible="False" ReadOnly="True" SortExpression="idsentsms" />
                <asp:BoundField DataField="sentdate" HeaderText="sentdate" SortExpression="sentdate" />
                <asp:BoundField DataField="rollno" HeaderText="rollno" SortExpression="rollno" />
                <asp:BoundField DataField="studentorParent" HeaderText="studentorParent" SortExpression="studentorParent" />
                <asp:BoundField DataField="phNumber" HeaderText="phNumber" SortExpression="phNumber" />
                <asp:BoundField DataField="msg" HeaderText="msg" SortExpression="msg" />
                <asp:BoundField DataField="msgstatus" HeaderText="msgstatus" SortExpression="msgstatus" />
            </Columns>
        </asp:GridView>

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SMS2.reportbydateTableAdapters.reportgroupdateTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtDate" DefaultValue="" Name="dat" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        </td>
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
