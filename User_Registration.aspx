<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Registration.aspx.cs" Inherits="HomePage.User_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <title></title>

    <style type="text/css">
        .style1 {
        }

        .user-form {
            color: blue;
            font-weight: bold;
        }

        .style1 {
            background-color: #87ceeb;
        }
        /*body
        {
            background-image: url('images/0cFvKO.jpg');
            background-repeat:no-repeat;
            
        }*/

        .style2 {
            width: 120px;
        }

        .style3 {
            height: 50px;
            width: 120px;
        }

        .auto-style1 {
            width: 400px;
        }

        .auto-style2 {
            height: 18px;
            width: 400px;
        }

        .auto-style4 {
            color: blue;
            font-weight: bold;
            width: 211px;
        }

        .auto-style6 {
            color: blue;
            font-weight: bold;
            width: 211px;
            height: 11px;
        }

        .auto-style7 {
            width: 400px;
            height: 11px;
        }

        .auto-style8 {
            color: blue;
            font-weight: bold;
            text-align: center;
        }

        .auto-style9 {
            color: blue;
            font-weight: bold;
            width: 211px;
            height: 18px;
        }

        .auto-style10 {
            text-align: left;
        }
    </style>
    <script type="text/javascript">
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
    </script>
    </head>
    <body>
    <form id="form1" runat="server">
         
    
     
            <center>
            <div class="container">
                <h2>
                    <b>Registration Form</b></h2>
                <table class="user-form" style="background-color: #87ceeb;">
                    <tr>
                        <td class="auto-style4">First Name
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtfname" runat="server" MaxLength="10" AutoComplete="Off" onkeypress="javascript:return ValidateAlpha(event);"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style4">Last Name
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtlname" runat="server" MaxLength="10" AutoComplete="Off" onkeypress="javascript:return ValidateAlpha(event);"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style6">User id
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtuserid" runat="server"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" Enter Userid "
                            ControlToValidate="txtuserid" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style4">Password
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter password"
                            ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Password must contain atleast one Caps,Small letter,Special symbol and numeric"
                            ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"
                            ForeColor="Red" ControlToValidate="txtpass"></asp:RegularExpressionValidator>
                    </tr>
                    <tr>
                        <td class="auto-style4">Mobile Number
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtnumber" runat="server" MaxLength="10" onkeypress="javascript:return isNumber(event)"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid phone number"
                            ControlToValidate="txtnumber" ForeColor="Red" ValidationExpression="[1-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                   
                    <tr>
                        <td class="auto-style9">Captcha
                        </td>
                        <td class="auto-style2">
                            <asp:Image ID="imgCaptcha" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Enter the above Captcha </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtcaptch" runat="server" AutoComplete="Off"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requirefieldcaptch" runat="server" ErrorMessage="Invalid captch" ControlToValidate="txtcaptch" ValidationExpression="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnsbmt_Click" />

                        </td>
                    </tr>
                    <tr>

                        <td class="auto-style8" colspan="2">
                            <asp:Label ID="lblshow" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>

                </table>
            </div>
        </center>
        </div>
    </form>
</body>
</html>
