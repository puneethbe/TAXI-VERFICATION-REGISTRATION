<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VcforAuto_Taxi_fee.aspx.cs" Inherits="HomePage.VcforAuto_Taxi_fee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            
        }
        .auto-style2 {
            width: 173px;
            text-align: right;
        }
        .auto-style3 {
            width: 256px;
        }
        .auto-style5 {
            width: 60%;
        }
        .auto-style6 {
            width: 175px;
        }
        .auto-style7 {
            width: 190px;
        }
        .auto-style8 {
            width: 224px;
        }
        .auto-style9 {
            width: 224px;
            text-align: center;
        }
        .auto-style10 {
            width: 190px;
            text-align: center;
        }
        .auto-style11 {
            width: 175px;
            text-align: center;
        }
        </style>
</head>
<body style="width: 1088px; height: 197px">
    <form id="form1" runat="server">
         
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">Is VC Quaterly Jamped:</td>
                    <td class="auto-style3">
                       <asp:RadioButtonList ID="btnrdo" runat="server" RepeatDirection="Horizontal" Width="250px" >
                                            <asp:ListItem  Value="Y">Yes</asp:ListItem>
                                            <asp:ListItem  Value="N">No</asp:ListItem>
                 
                          </asp:RadioButtonList>
                     <!--      <asp:RadioButton ID="btnyes" value="Y" Text="Yes" runat="server"></asp:RadioButton>   
                        <asp:RadioButton ID="btnno" value="N" Text="No" Selected="True" runat="server"></asp:RadioButton>-->
                </tr>
                 <tr>
                    <td class="auto-style2">VC&nbsp; amount:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtvcamt" runat="server"   BorderStyle="Outset"  Height="25px" Width="250px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">No. of Quarters Jamped:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtnqj" runat="server"  BorderStyle="Outset" Height="25px" Width="250px" AutoPostBack="true" OnTextChanged="Txtnqj_TextChanged" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Quarterly Jamped Amount:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtqja" runat="server"  BorderStyle="Outset" Height="25px" Width="250px" ></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style2">Total Amount:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtttlamt" runat="server"  BorderStyle="Outset" Height="25px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <div>

               

                <table align="center" class="auto-style5">
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <%--<asp:Button ID="btnprvw" runat="server" BackColor="#0099FF" BorderColor="White"  Font-Size="12pt" Height="36px" Text="Preview" Width="156px" OnClick="btntsd_Click" />--%>
                        </td>
                        <td class="auto-style10">
                            <asp:Button ID="btngnrtrcpt" runat="server" BackColor="#0099FF" BorderColor="White"  Font-Size="12pt" Height="36px" Text="Generate Receipt" Width="176px" OnClick="btngnrtrcpt_Click" />
                        </td>
                        <td class="auto-style9">
                            <%--<asp:Button ID="btntsdrjt" runat="server" BackColor="#0099FF" BorderColor="White"  Font-Size="12pt" Height="36px" Text="Tested and Rejected" Width="167px" OnClick="btntsdrjt_Click" />--%>
                        </td>
                    </tr>
                </table>

               

            </div>
        </div>
    </form>
</body>
</html>
