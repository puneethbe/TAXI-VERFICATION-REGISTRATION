<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Form.aspx.cs" Inherits="HomePage.WebForm1" ValidateRequest="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
    

<head runat="server">
     <title></title>
    <%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>--%>

    <style type="text/css">
        body {
            background-color: white;
            font-family: Arial;
            font-size: 10pt;
            color: #444;
        }

        .ParentMenu, .ParentMenu:hover {
            width: 100px;
            background-color: #fff;
            color: #333;
            text-align: center;
            height: 30px;
            line-height: 30px;
            margin-right: 5px;
        }

            .ParentMenu:hover {
                background-color: white;
            }

        .ChildMenu, .ChildMenu:hover {
            width: 110px;
            background-color: #fff;
            color: #333;
            text-align: center;
            height: 30px;
            line-height: 30px;
            margin-top: 5px;
        }

            .ChildMenu:hover {
                background-color: white;
            }

        .selected, .selected:hover {
            background-color: #A6A6A6 !important;
            color: #fff;
        }

        .level2 {
            background-color: #fff;
        }

        .container {
            overflow: hidden;
            background-color: #333;
            font-family: Arial;
        }

            .container a {
                float: left;
                font-size: 16px;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

        .dropdown {
            float: left;
            overflow: hidden;
        }

            .dropdown .dropbtn {
                font-size: 16px;
                border: none;
                outline: none;
                color: white;
                padding: 14px 16px;
                background-color: inherit;
            }

            .container a:hover, .dropdown:hover .dropbtn {
                background-color: black;
            }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                float: none;
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

                .dropdown-content a:hover {
                    background-color: darkslateblue;
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }
   
        .style1 {
            width: 8%;
            height: 31px;
        }

        .style2 {
            width: 296px;
            height: 31px;
        }

        .style3 {
            width: 163px;
        }

        #mainTab {
            background-image: url('Images/bgLogin.jpg');
            border: 2px outset DodgerBlue;
        }

        #logtab {
            background-image: url('Images/loginimg.jpg');
        }

        #DSSPImg {
            background-image: url('Images/DSSP1.jpg');
            Height: 70px;
            Width: 75px;
            background-repeat: no-repeat;
            background-position: center;
        }

        .style4 {
            height: 1px;
        }

        /*#logtab {
            background-color: blue;
        }*/
        .auto-style1 {
            width: 367px;
        }
        .auto-style2 {
            width: 367px;
            height: 31px;
        }
        .auto-style3 {
            height: 96px;
        }
        header{
            background-color:aqua;
        }
    
 
        .auto-style4 {
            text-align: left;
            font-size: large;
        }
    
 
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="msg">
                <table width="100%">
                    <tr>
                        <td align="center" bgcolor="steelblue"
                            style="color: white; font-family: 'Segoe UI'; font-size: x-large; font-weight: bold;">Login Form</td>
                    </tr>
                </table>
            </div>
         <div class="header">
            <asp:Image ID="Image2" runat="server" ImageUrl="images/download.jpg" Height="193px" Width="1981px" />
        </div>
        <div class="auto-style4" style="margin-left:25%">
            <a href="#home" >Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#Contactus" >Contact US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#AboutUs" >About US</a>
             
        </div> 
        <div style="float:right">
            <asp:DropDownList ID="DropDownList1" runat="server" >
                <asp:ListItem Text="SELECT" Value="1"></asp:ListItem>
                <asp:ListItem Text="ENGLISH" Value="1"></asp:ListItem>
                <asp:ListItem Text="KANNADA." Value="2"></asp:ListItem>

            </asp:DropDownList>
           
        </div>

        


        <asp:ToolkitScriptManager ID="TKS1" runat="server">
        </asp:ToolkitScriptManager>
        <div>
        </div>

       
        <table id="logtab" runat="server" width="25%" style="background-color:#C0C0C0; padding: inherit; border-style: outset; border-color: White; " align="center" class="auto-style3" bgcolor="Silver">

            <tr>
                                <td align="center" valign="middle" width="100%">
                                    <asp:Button ID="btndep" runat="server" Font-Bold="True"  ForeColor="Blue" TabIndex="4"
                                    Text="DEPARTMENT" Width="91pt" style="text-align: center;" OnClick="btndep_Click" />
                                    </td>
                                    <td align="center" valign="middle" width="100%">
                                    <asp:Button ID="btncitizen" runat="server" Font-Bold="True"  ForeColor="Blue" TabIndex="4"
                                    Text="CITIZEN" Width="91pt" style="text-align: center;" OnClick="btncitizen_Click" />
                                    <%--<img src="../Images/l1.jpg" alt="" width="88px" height="69px" />--%>
                                </td>
                            </tr>
          <%--  <tr>
                <td align="right" style="width: 1px">
                    <asp:Button ID="BTNDEP" runat="server" Font-Bold="True" ForeColor="Blue" TabIndex="5"
                        Text="DEPARTMENT" Width="170pt" CausesValidation="False" ToolTip="Click for clear the  user name entry" />
                </td>
                <td align="left" class="auto-style1">
                    <!--class="btnav" onmouseover="style backgroundColor='Yellow';"
                                                    onmouseout="style.backgroundColor='White';" ToolTip="Enter user name" ValidationGroup="loginval"
                                                    MaxLength="15"></asp:TextBox>-->
                    <asp:Button ID="btncitizen" runat="server" Font-Bold="True" ForeColor="Blue" TabIndex="5"
                        Text="CITIZEN   " Width="170pt" CausesValidation="False" ToolTip="Click for clear the  user name entry" />
                </td>
            </tr>--%>
            <tr>
                <td align="right" style="width: 1px"></td>
                <td align="left" class="auto-style1">
                    <!--class="btnav" onmouseover="style backgroundColor='Yellow';"
                                                    onmouseout="style.backgroundColor='White';" ToolTip="Enter user name" ValidationGroup="loginval"
                                                    MaxLength="15"></asp:TextBox>-->
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    <asp:Label ID="lblUserName" runat="server" Font-Bold="True" Text="User Name: "
                        ForeColor="#3333CC" Font-Names="Verdana" Font-Size="Small" />
                   <%-- <asp:Label ID="lbl" runat="server" Text="Username"></asp:Label>--%>
                </td>
                <td align="left" class="auto-style2">
                    <asp:TextBox ID="txtUserName" TabIndex="1" runat="server" autocomplete="off" ValidationGroup="loginval"
                        BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" Width="100pt" MaxLength="50"  AutoCompleteType="Disabled" />
                    <!--class="btnav" onmouseover="style backgroundColor='Yellow';"
                                                    onmouseout="style.backgroundColor='White';" ToolTip="Enter user name" ValidationGroup="loginval"
                                                    MaxLength="15"></asp:TextBox>-->
                    <%--<cc1:TextBoxWatermarkExtender ID="txtwatermrkID" runat="server" TargetControlID="txtUserName"
                                                    WatermarkText="USER NAME">
                                                </cc1:TextBoxWatermarkExtender>--%>
                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                        ErrorMessage="Please Enter User Name" SetFocusOnError="True" ValidationGroup="loginval">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revUserName" runat="server" ControlToValidate="txtUserName"
                        Display="Dynamic" ErrorMessage="Only characters allowed" SetFocusOnError="True"
                        ValidationExpression="^[a-zA-Z_]{0,8}$" ValidationGroup="loginval">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr id="TRPass" runat="server">
                <td align="right" style="width: 8%; height: 31px;">
                    <asp:Label ID="lblPassword" Text="Password: " AccessKey="P" ToolTip="Enter Password"
                                                    runat="server" Font-Bold="True" ForeColor="#3333CC" Font-Names="Verdana" Font-Size="Small" />
                    <%--<asp:Label ID="lbl1" runat="server" Text="Enter Password"></asp:Label>--%>
                </td>
                <td align="left" class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" autocomplete="off" TextMode="Password"
                        class="btnav" TabIndex="2" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px"
                        Width="100pt" MaxLength="50" ToolTip="Enter password" ValidationGroup="loginval"
                        oncopy="return false" onpaste="return false" oncut="return false"></asp:TextBox>
                    <%--<cc1:TextBoxWatermarkExtender ID="txtwatermrkPass" runat="server" TargetControlID="txtpass"
                                                    WatermarkText="PASSWORD"> onmouseover="style.backgroundColor='Yellow';"
                                                </cc1:TextBoxWatermarkExtender>--%>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="Please Enter Password" SetFocusOnError="True" ValidationGroup="loginval">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                        Display="Dynamic" ErrorMessage="Other than 'No,characters,_~!@#$%^&*' special characters are not allowed"
                        SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9_~!@#$%^&*]*$" ValidationGroup="loginval"
                        Width="1px">*</asp:RegularExpressionValidator>
                    <!-- ValidationExpression="^[a-zA-Z'.\s\-\%\$\@\!\~\&\#\\_]{0,8}$" -->
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 8%; height: 31px;">
                    <%--<asp:Label ID="lblcaptcha" runat="server" Text="Generated Security Code: "
                                                Font-Bold="true" ForeColor="Purple" Font-Names="Verdana" Font-Size="Small" />--%>
                </td>
                <td align="left" class="auto-style2">
                   <%-- <asp:Image ID="ImgCaptcha" runat="server" ImageUrl="C:\Users\HP\source\repos\HomePage\HomePage\images\captcha@2x1.png" />--%>
                    &nbsp; &nbsp;
                                                <%--<asp:ImageButton ID="ImgbtnRefresh" runat="server" OnClick="ImgbtnRefresh_Click" TabIndex="6" ImageUrl="~/Images/Reset.png"
                                                    ToolTip="Refresh" />--%>
                </td>
            </tr>
            <tr>
               <%-- <td align="right" style="width: 8%; height: 31px;">
                   <asp:Label ID="lblSecurityCode" Text="Enter Security Code as it appears Above: "
                                                    ToolTip="Enter Security Code Exactly as it appears above" runat="server" Font-Bold="True"
                                                    ForeColor="White" Font-Names="Verdana" Font-Size="Small" />
                   


                </td>--%>
                <%--<td align="left" class="auto-style2">
                    <asp:TextBox ID="txtCaptcha" runat="server" MaxLength="5" class="btnav" TabIndex="3"
                        BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" Width="100pt" ToolTip="Enter Security Code"
                        ValidationGroup="loginval" oncopy="return false" onpaste="return false" oncut="return false"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="FTECaptcha" runat="server" TargetControlID="txtCaptcha"
                        FilterType="LowercaseLetters,UppercaseLetters,Numbers" />
                    <asp:RequiredFieldValidator ID="REVCaptcha" runat="server" ControlToValidate="txtCaptcha"
                        ErrorMessage="Please Enter Security Code as dispalyed in Image" SetFocusOnError="True"
                        ValidationGroup="loginval">*</asp:RequiredFieldValidator>
                </td>--%>
            </tr>
            <%--<tr>
                                            <td align="right" style="width: 8%; height: 31px;">
                                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Finger Print" 
                                                    ForeColor="Purple" Font-Names="Verdana" Font-Size="Small"></asp:Label>
                                            </td>
                                            <td align="left" style="width: 296px; height: 31px;">
                                                <asp:Button ID="btnCaptureLog" runat="server" Text="Capture" OnClientClick="LoginVerify(); return false;" />
                                                <asp:TextBox ID="txtFingerPrintLog" runat="server" Visible="False"></asp:TextBox> OnClientClick="getHash();this.disabled=true;"
                                            </td>
                                        </tr>--%>
            <tr>
                <td align="center" style="height: 28px;" colspan="2">
                    <table style="width: 58%; height: 31px;">
                        <tr>
                            <td align="center">
                                <asp:Button ID="btnLogin" runat="server" Font-Bold="True"  ForeColor="Blue" TabIndex="4"
                                    Text="Sign In" Width="91pt" ToolTip="Click for signing in" 
                                    ValidationGroup="loginval" UseSubmitBehavior="false" style="text-align: center;" OnClick="btnLogin_Click" />
                                    
                            </td>
                            
                        </tr>
                    </table>
                   <div>

                   </div>
                    <div>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="New Registration" NavigateUrl="www.javatpoint.com" > </asp:HyperLink>  
                    </div>
                    <div>
                       <asp:Label ID="lblStatus" runat="server" Text="Label" Visible="False"></asp:Label>
                    </div>
                   
                </td>
            </tr>


            
        </table>
    </form>
</body>
</html>
