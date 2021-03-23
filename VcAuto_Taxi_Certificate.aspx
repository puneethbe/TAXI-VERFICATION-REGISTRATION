<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VcAuto_Taxi_Certificate.aspx.cs" Inherits="HomePage.VcAuto_Taxi_Certificate" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <asp:ScriptManager runat="server" ID="ScriptManager1" >
        </asp:ScriptManager>
        <rsweb:ReportViewer runat="server" ID="ReportViewer1"  ProcessingMode="Remote" Height="474px" Width="954px">
</rsweb:ReportViewer>
</body>
</html>
