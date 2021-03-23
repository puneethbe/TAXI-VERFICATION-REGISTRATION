<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VcforAuto_Taxi.aspx.cs" Inherits="HomePage.VcforAuto_Taxi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 82%;
            height: 396px;
            margin-right: 0px;
        }

        .auto-style9 {
            text-align: right;
        }

        .auto-style10 {
            width: 216px;
            text-align: center;
            margin-left: 80px;
        }

        .auto-style41 {
            width: 181px;
            text-align: right;
        }

        .auto-style59 {
            width: 249px;
            text-align: right;
            height: 56px;
        }

        .auto-style60 {
            width: 427px;
            height: 56px;
        }

        .auto-style61 {
            width: 20px;
            height: 56px;
        }

        .auto-style62 {
            width: 216px;
            text-align: right;
            height: 56px;
        }

        .auto-style63 {
            height: 56px;
        }

        .auto-style64 {
            width: 428px;
        }

        .auto-style65 {
            width: 20px;
        }

        .auto-style66 {
            width: 20px;
            height: 30px;
        }

        .auto-style67 {
            width: 20px;
            text-align: right;
        }

        .auto-style68 {
            width: 390px;
        }

        .auto-style69 {
            width: 390px;
            height: 30px;
        }

        .auto-style70 {
            width: 962px;
        }

        .auto-style71 {
            width: 245px;
            text-align: right;
        }

        .auto-style73 {
            width: 150px;
            height: 30px;
        }

        .auto-style74 {
            width: 150px;
            text-align: right;
        }

        .auto-style75 {
            width: 267px;
        }

        .auto-style76 {
            width: 206px;
        }

        .auto-style77 {
            width: 150px;
        }

        .auto-style78 {
            width: 206px;
            text-align: right;
        }

        .auto-style89 {
            height: 56px;
            width: 383px;
        }

        .auto-style90 {
            width: 383px;
        }

        .auto-style91 {
            width: 249px;
            text-align: right;
            height: 14px;
        }

        .auto-style92 {
            width: 427px;
            height: 14px;
        }

        .auto-style93 {
            width: 20px;
            height: 14px;
        }

        .auto-style94 {
            width: 216px;
            text-align: right;
            height: 14px;
        }

        .auto-style95 {
            height: 14px;
            width: 383px;
        }

        .auto-style96 {
            width: 427px;
        }

        .auto-style101 {
            width: 216px;
            text-align: right;
        }

        .auto-style102 {
            width: 216px;
        }

        .auto-style103 {
            width: 249px;
        }

        .auto-style104 {
            height: 30px;
        }

        .auto-style105 {
            width: 249px;
            text-align: right;
        }
    </style>


    <!--  <script type="text/javascript">
 
        function IsAlphaNumeric(e) {
            // alert(e.keyCode);
            var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
            if ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || (keyCode == 32)) { return true; }
            else {
                alert("only alphabets and numbers are allowed");
                return false;
            }
        }

        function isNumber(evt) {
            var iKeyCode = (evt.which) ? evt.which : evt.keyCode
            if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57)) {
                alert("only numbers are allowed");
                return false;
            }
            else {
                return true;
            }
        }
       
        function ValidateAlpha(evt) {
            var keyCode = (evt.which) ? evt.which : evt.keyCode
            if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32) {
                alert("special characters are not allowed");
                return false;
            }
            else {
                return true;
            }
        }

 
         function setFormat()
        {
        var inp = document.getElementById('ctl00_MainContent_txtfrn');
        var x = inp.value;
        inp.value = x.toUpperCase();
    }

    var inp = document.getElementById('ctl00_MainContent_txtfrn');
    inp.onblur = function(evt) {
        setFormat();
    </script> -->
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div>
                <table class="auto-style70">
                    <tr>
                        <td class="auto-style71">Fivm Reg No :
                        </td>
                        <td class="auto-style64">
                            <asp:TextBox ID="txtfrn" runat="server" BorderStyle="Outset" AutoComplete="Off" Height="25px" Width="250px" AutoPostBack="true" OnTextChanged="Txtfrn_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Font-Size="16px" ForeColor="Red" runat="server" ErrorMessage="*"
                                ControlToValidate="txtfrn"></asp:RequiredFieldValidator>
                            &nbsp;<asp:Label ID="lblinfo" ForeColor="Red" Font-Size="10pt" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style71">Fivm Name :</td>
                        <td class="auto-style64">
                            <asp:Label ID="lblfn" runat="server" BorderStyle="Outset" Height="25px" Width="250px"></asp:Label>
                        </td>
                        <td class="auto-style41">&nbsp;Fivm Address :</td>
                        <td>
                            <asp:Label ID="lblfa" runat="server" BorderStyle="Outset" Height="25px" Width="250px"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style76"></td>
                        <td class="auto-style75"></td>
                        <td class="auto-style73"></td>
                        <td class="auto-style69"></td>
                    </tr>
                    <tr>
                        <td class="auto-style78">Auto/Taxi Reg.No.&nbsp; </td>
                        <td class="auto-style75">
                            <asp:TextBox ID="txtatr" runat="server" BorderStyle="Outset" AutoComplete="Off" Height="25px" Width="250px" text-transform="uppercase" AutoPostBack="true" OnTextChanged="Txtatr_TextChanged"></asp:TextBox>
                        </td>
                        <td class="auto-style77">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Font-Size="16px" ForeColor="Red" runat="server" ErrorMessage="*"
                                ControlToValidate="txtatr"></asp:RequiredFieldValidator><asp:Label ID="lblinfo1" ForeColor="Red" Font-Size="10pt" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style68"></td>
                    </tr>
                    <tr>
                        <td class="auto-style78">Permit No:</td>
                        <td class="auto-style75">
                            <asp:Label ID="lblpn" runat="server" BorderStyle="Outset" AutoComplete="Off" Height="25px" Width="250px"></asp:Label>
                        </td>
                        <td class="auto-style74">Name:</td>
                        <td class="auto-style68">
                            <asp:Label ID="lblnm" runat="server" BorderStyle="Outset" Height="25px" Width="250px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style78">Address:</td>
                        <td class="auto-style75">
                            <asp:Label ID="lblad" runat="server" BorderStyle="Outset" Height="35px" Width="250px"></asp:Label>
                        </td>
                        <td class="auto-style77">&nbsp;</td>
                        <td class="auto-style68">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style76">&nbsp;</td>
                        <td class="auto-style75">&nbsp;</td>
                        <td class="auto-style73"></td>
                        <td class="auto-style69">&nbsp;</td>
                    </tr>
                </table>

            </div>
            &nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style105">Request Purpose :</td>
                    <td class="auto-style96">
                        <asp:DropDownList ID="ddlReqpps" runat="server" Height="40px" Width="250px" OnSelectedIndexChanged="ddlReqpps_SelectedIndexChanged">
                        </asp:DropDownList>

                    </td>
                    <td class="auto-style65">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlReqpps" ErrorMessage="*" Font-Size="16px" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                    <td class="auto-style101">Repair :</td>
                    <td class="auto-style90">
                        <asp:DropDownList ID="ddlrepair" runat="server" Height="40px" Width="250px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style91">Auto Type :</td>
                    <td class="auto-style92">
                        <asp:DropDownList ID="ddlauto_type" runat="server" Height="40px" Width="250px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style93">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlauto_type" ErrorMessage="*" Font-Size="16px" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                    <td class="auto-style94">Receipt Date :</td>

                    <td class="auto-style95">
                        <asp:TextBox ID="txtrcptdt" runat="server" placeholder="Please Select the Date in Calender" AutoComplete="Off" BorderStyle="Outset" Height="25px" Width="250px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="28px"
                            ImageUrl="~/images/calender.png" OnClick="ImageButton1_Click" Width="28px" />
                        <asp:Calendar ID="Calendar1" runat="server"
                            OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>


                    </td>
                </tr>
                <tr>
                    <td class="auto-style103">&nbsp;</td>
                    <td class="auto-style96">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td class="auto-style101">Repairer Recept No: </td>
                    <td class="auto-style90">
                        <asp:TextBox ID="txtrrn" runat="server" AutoComplete="Off" BorderStyle="Outset" Height="25px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style59">Fare Meter Type :</td>
                    <td class="auto-style60">
                        <asp:DropDownList ID="ddlfare_mtr_type" runat="server" Height="40px" Width="250px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style61"></td>
                    <td class="auto-style62">Fee :</td>
                    <td class="auto-style89">
                        <asp:TextBox ID="txtfe" runat="server" BorderStyle="Outset" Height="25px" placeholder="150<" AutoComplete="Off" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style63">
                        <asp:CompareValidator ID="Rangevalidater1" runat="server" ControlToValidate="txtfe" ValueToCompare="150" Operator="GreaterThanEqual" ForeColor="red" Font-Size="14px" Type="Integer" ErrorMessage="*"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style105">Fare Meter Maker :</td>
                    <td class="auto-style96">
                        <asp:DropDownList ID="ddlfare_mtr_mkr" runat="server" Height="40px" Width="250px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style65">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlfare_mtr_mkr" ErrorMessage="*" Font-Size="16px" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                    <td class="auto-style102">&nbsp;</td>
                    <td class="auto-style90">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style103">&nbsp;</td>
                    <td class="auto-style96">&nbsp;</td>
                    <td class="auto-style65">&nbsp;</td>
                    <td class="auto-style101">Mobile Number :</td>
                    <td class="auto-style90">
                        <asp:TextBox ID="txtmobile_no" runat="server" BorderStyle="Outset" MaxLength="10" onkeypress="javascript:return isNumber(event)" AutoComplete="Off" Height="25px" Width="250px"></asp:TextBox>
                        &nbsp;
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Font-Size="16px" runat="server" ErrorMessage="*"
                                ControlToValidate="txtmobile_no" ForeColor="Red" ValidationExpression="[1-9]{1}[0-9]{9}"></asp:RegularExpressionValidator></td>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style105">Fare Meter Number :</td>
                    <td class="auto-style96">
                        <asp:TextBox ID="txtfmn" runat="server" BorderStyle="Outset" AutoComplete="Off" Height="25px" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style65">&nbsp;</td>
                    <td class="auto-style101">Seal Number :</td>
                    <td class="auto-style90">
                        <asp:TextBox ID="txtsn" runat="server" BorderStyle="Outset" AutoComplete="Off" Height="25px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style105">Pulse Rate/KM :</td>
                    <td class="auto-style96">

                        <asp:DropDownList ID="ddlplsrt" runat="server" Height="40px" Width="250px">
                        </asp:DropDownList>

                    </td>
                    <td class="auto-style65">&nbsp;</td>
                    <td class="auto-style101">Tariff :</td>
                    <td class="auto-style90">
                        <asp:TextBox ID="txttf" runat="server" BorderStyle="Outset" AutoComplete="Off" Height="25px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style104" colspan="2">
                        <table align="center" class="auto-style1">
                            <tr>
                                <td class="auto-style2">Is VC Quaterly Jamped:</td>
                                <td class="auto-style3">
                                    <asp:RadioButtonList ID="btnrdo" runat="server" RepeatDirection="Horizontal" Width="250px">
                                        <asp:ListItem Value="Y">Yes</asp:ListItem>
                                        <asp:ListItem Value="N">No</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <!--      <asp:RadioButton ID="btnyes" value="Y" Text="Yes" runat="server"></asp:RadioButton>   
                        <asp:RadioButton ID="btnno" value="N" Text="No" Selected="True" runat="server"></asp:RadioButton>-->
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">VC&nbsp; amount:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtvcamt" runat="server" BorderStyle="Outset" Height="25px" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">No. of Quarters Jamped:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtnqj" runat="server" AutoPostBack="true" BorderStyle="Outset" Height="25px" OnTextChanged="Txtnqj_TextChanged" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Quarterly Jamped Amount:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtqja" runat="server" BorderStyle="Outset" Height="25px" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Total Amount:</td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="txtttlamt" runat="server" BorderStyle="Outset" Height="25px" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style66">&nbsp;</td>
                    <td class="auto-style104" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        <asp:Button ID="btnsv" runat="server" BackColor="#3399FF" Font-Bold="True" Font-Size="16px" Height="30px" Text="SAVE" Width="100px" OnClick="btnsv_Click" />
                    </td>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style10"><strong>
                        <asp:Button ID="btnext" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Size="16px" Height="31px" Text="EXIT" Width="100px" OnClick="Btnext_Click" />
                    </strong></td>
                    <td class="auto-style90">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

