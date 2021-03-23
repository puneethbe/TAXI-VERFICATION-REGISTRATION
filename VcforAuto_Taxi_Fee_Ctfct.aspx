<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VcforAuto_Taxi_Fee_Ctfct.aspx.cs" Inherits="HomePage.VcforAuto_Taxi_Fee_Ctfct" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" ProcessingMode="Remote" Height="474px" Width="954px">
  <ServerReport ReportPath="" ReportServerUrl="" />
</rsweb:ReportViewer>
</body>
</html>
