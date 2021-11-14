<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 130%;
            position: relative;
            left: -385px;
            top: 8px;
            height: 249px;
        }
        .auto-style3 {
            width: 1083px;
        }
        .auto-style4 {
            position: relative;
            left: 27px;
            top: 0px;
            width: 223px;
        }
        .auto-style5 {
            position: relative;
            left: 28px;
            top: 0px;
            width: 256px;
        }
        .auto-style6 {
            text-align: center;
            width: 375px;
        }
        .auto-style7 {
            width: 375px;
        }
        .auto-style8 {
            width: 553px;
        }
    </style>
</head>
<body style="background-position: center center; background-image: url('角落生物賞櫻.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-family: 'Gen Jyuu Gothic Medium'; color: #F4CB93;">
            歡迎來到角落櫻花</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="id_LB" runat="server" Font-Names="Gen Jyuu Gothic Monospace Mediu" Font-Size="14pt" ForeColor="#F1CD9D" Text="帳號"></asp:Label>
                    <asp:TextBox ID="id_TB" runat="server" CssClass="auto-style4" Height="24px" Width="220px" OnTextChanged="id_TB_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="password_LB" runat="server" Font-Names="Gen Jyuu Gothic Monospace Mediu" Font-Size="14pt" ForeColor="#F3CB8E" Text="密碼"></asp:Label>
                    <asp:TextBox ID="password_TB" runat="server" CssClass="auto-style5" Height="24px" TextMode="Password" Width="220px"></asp:TextBox>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="login_Button" runat="server" Font-Names="Gen Jyuu Gothic Monospace Mediu" Font-Size="12pt" Text="登入" Width="80px" OnClick="login_Button_Click" />
                    <asp:LinkButton ID="entry" runat="server" Font-Names="Gen Jyuu Gothic Monospace Mediu" Visible="False" PostBackUrl="~/Store.aspx">進入商店</asp:LinkButton>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:DetailsView ID="clientDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="clientDetail" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                            <asp:BoundField DataField="user_money" HeaderText="user_money" SortExpression="user_money" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:SqlDataSource ID="clientDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_name], [user_money] FROM [userData] WHERE (([user_name] = @user_name) AND ([user_password] = @user_password))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="id_TB" Name="user_name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="password_TB" Name="user_password" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
