<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterationPage.aspx.cs" Inherits="demo.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>trial webpage</title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            background-color:aqua;
        }
        .auto-style2 {
            text-align: center;
            text-decoration: underline;
            font-size: medium;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1" border="1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2" colspan="2">
                    <h1><strong>Registration Form</strong></h1>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">Name </td>
                <td>
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="*" ControlToValidate="TxtName" SetFocusOnError="True" ValidationGroup="Requiredfieldgroup" Display="Static" ForeColor="Red" ></asp:RequiredFieldValidator>
                </td>
                
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style3">Address</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="*" ControlToValidate="TxtAddress" SetFocusOnError="True" ValidationGroup="Requiredfieldgroup" Display="Dynamic"  ForeColor="Red" ></asp:RequiredFieldValidator>
                    
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">Contact Details</td>
                <td>
                    <asp:TextBox ID="TxtContact" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorContact" runat="server" ErrorMessage="*" ControlToValidate="TxtContact" SetFocusOnError="True" ValidationGroup="Requiredfieldgroup" Display="Dynamic"  ForeColor="Red" ></asp:RequiredFieldValidator></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">Email ID</td>
                <td><asp:TextBox ID="TxtEmailID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailId" runat="server" ErrorMessage="*" ControlToValidate="TxtEmailID" SetFocusOnError="True" ValidationGroup="Requiredfieldgroup" Display="Dynamic"  ForeColor="Red" ></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmailID" runat="server" ErrorMessage="pls enter correct Email ID" ControlToValidate="TxtEmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Requiredfieldgroup"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">Password</td>
                <td><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPasswrd" runat="server" ErrorMessage="*" ControlToValidate="TxtPassword" SetFocusOnError="True" ValidationGroup="Requiredfieldgroup" Display="Dynamic"  ForeColor="Red" ></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">Confirm Password</td>
                <td><asp:TextBox ID="txtConfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorconfirmPasswrd" runat="server" ErrorMessage="*" ControlToValidate="txtConfirmpassword" SetFocusOnError="True" ValidationGroup="Requiredfieldgroup" Display="Dynamic"  ForeColor="Red" ></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorpasswrd" runat="server" ErrorMessage="Password Incorrect" ControlToCompare="TxtPassword" ControlToValidate="txtConfirmpassword" ValidationGroup="Requiredfieldgroup" ToolTip="check passwrd"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Btnsubmit" runat="server" OnClick="Button1_Click" ValidationGroup="Requiredfieldgroup" Text="Submit" />
                &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Go to Login Page" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
