<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HW1001.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #FFFFFF;
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: xx-large;
            background-color: #723D0B;
        }
        .auto-style3 {
            background-color: #6E3C0B;
        }
        .auto-style4 {
            width: 100%;
            position: relative;
            left: 0px;
            top: 0px;
            height: 154px;
        }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            height: 20px;
            text-align: center;
        }
        .auto-style9 {
            margin-left: 14px;
        }
        .auto-style10 {
            margin-left: 16px;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44361/視訊背景.jpg'); background-size:cover; background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style2"><strong><span class="auto-style3">歡迎來到快樂空間</span></strong></h1>
        </div>
        <table class="auto-style4">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label_account" runat="server" Text="帳號"></asp:Label>
                    <asp:TextBox ID="TextBox_account" runat="server" CssClass="auto-style9" Height="22px" OnTextChanged="TextBox_account_TextChanged" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style8">
                    <asp:Label ID="Label_password" runat="server" Text="密碼"></asp:Label>
                    <asp:TextBox ID="TextBox_password" runat="server" CssClass="auto-style10" Height="20px" OnTextChanged="TextBox_password_TextChanged" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button_login" runat="server" Height="26px" Text="登入" Width="64px" />
                    <asp:LinkButton ID="LinkButton_entry" runat="server" EnableTheming="True" OnClick="LinkButton_entry_Click" Width="125px">進入商店</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
