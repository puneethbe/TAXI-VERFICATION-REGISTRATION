<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inspectionForm.aspx.cs" Inherits="HomePage.inspectionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 86px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style6 {
            width: 165px;
            text-align: left;
        }
        .auto-style7 {
            width: 155px;
            text-align: left;
        }
        .auto-style9 {
            width: 263px;
        }
        .auto-style10 {
            width: 1092px;
            height: 525px;
        }
        .auto-style11 {
            width: 57%;
        }
        .auto-style12 {
            width: 585px;
            text-align: right;
        }
        .auto-style13 {
            font-weight: bold;
            background-color: #0066FF;
            margin-left: 0px;
        }
        .auto-style14 {
            width: 76%;
            height: 156px;
        }
        .auto-style15 {
            width: 157px;
        }
        .auto-style16 {
            width: 154px;
        }
        .auto-style17 {
            width: 112px;
            text-align: left;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style10">
            <h1 class="auto-style2">Inspection Form</h1>       
                    <asp:Label ID="DtIp" Text="Direct Inspection:" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Larger" Font-Underline="True" />
                    <asp:RadioButtonList ID="DtIpRb" runat="server"   RepeatDirection="Horizontal" Height="38px" Width="824px" Font-Bold="True">
                        <asp:ListItem Value="Firm">Firm</asp:ListItem>
                        <asp:ListItem Value="Auto Taxi">Auto/Taxi</asp:ListItem>
                        <asp:ListItem Value="Tank Truck">Tank Truck</asp:ListItem>
                        </asp:RadioButtonList>       
            <table class="auto-style1">
                <tr>
                    <td class="auto-style17"><strong>LCR Number(Registered Firm Number):</strong></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="tbln" runat="server" BorderStyle="Groove" Height="25px" Width="200px"></asp:TextBox>
                    </td>
                   <td class="auto-style7"><strong>Firm/Person:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="tbfp" runat="server" BorderStyle="Groove" Height="25px" Width="200px"></asp:TextBox>
                    </td> //
                </tr>
                <tr>
                    <td class="auto-style17"><strong>Mobile:</strong></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="tbmn" runat="server" BorderStyle="Groove" Height="25px" Width="200px"></asp:TextBox>
                    </td> 
                    <td class="auto-style7"><strong>Inspection Date:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="tbid" runat="server" BorderStyle="Groove" Height="25px" TextMode="Date" Width="200px"></asp:TextBox>
                    </td>
                </tr>
            </table>
                    <asp:Label ID="DtIp1" Text="Category" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="20px" Font-Underline="True" />
            <br />
                    <asp:RadioButtonList ID="DtIpRb1" runat="server"   RepeatDirection="Horizontal" Height="38px" Width="628px" Font-Bold="True">
                        <asp:ListItem Value="1">Package Commodity</asp:ListItem>
                        <asp:ListItem Value="2">Weight & Measurement</asp:ListItem>
                       
                        </asp:RadioButtonList>       
            <table class="auto-style11">
                </table>
                    <asp:Label ID="DtIp0" Text="Violation" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="20px" Font-Underline="True" />
            <br />
                    <asp:RadioButtonList ID="DtIpRb2" runat="server"   RepeatDirection="Horizontal" Height="38px" Width="551px" Font-Bold="True">
                        
                       <asp:ListItem Value="true">Violation Found</asp:ListItem>
                        <asp:ListItem Value="false">Nonviolation</asp:ListItem>
                        </asp:RadioButtonList>       
            <table class="auto-style14">
                <tr>
                     <td class="auto-style6"><strong>Observation:</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="tbob" runat="server" BorderStyle="Groove" Height="100px" Width="409px" TextMode="MultiLine" BorderColor="Black"></asp:TextBox>
                    </td>
                     
                    <td class="auto-style12">
                       
                        <strong>
                       
                        <asp:Button ID="btn" runat="server" OnClick="Button1_Click" Text="Book Case" Width="169px" CssClass="auto-style13" Height="43px" Font-Size="20pt" ForeColor="#000066" />
                       
                        </strong>
                       
                    </td>

                   
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblInfo"   runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>

