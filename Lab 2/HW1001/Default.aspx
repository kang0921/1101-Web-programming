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
            font-weight: normal;
        }
        .auto-style3 {
            background-color: #6E3C0B;
        }
        .auto-style4 {
            width: 100%;
            position: relative;
            left: 0px;
            top: 0px;
            height: 249px;
        }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            text-align: center;
            height: 59px;
        }
        .auto-style8 {
            height: 20px;
            text-align: center;
            width: 221px;
        }
        .auto-style9 {
            margin-left: 14px;
        }
        .auto-style10 {
            margin-left: 16px;
        }
        .auto-style15 {
            height: 20px;
            text-align: center;
            width: 568px;
        }
        .auto-style16 {
            height: 51px;
            text-align: center;
            width: 568px;
        }
        .auto-style17 {
            height: 51px;
            text-align: center;
            width: 221px;
        }
        .auto-style18 {
            height: 51px;
        }
        .auto-style19 {
            height: 72px;
            text-align: center;
            width: 568px;
        }
        .auto-style20 {
            height: 72px;
            text-align: center;
            width: 221px;
        }
        .auto-style21 {
            height: 72px;
        }
        .auto-style22 {
            text-align: center;
            width: 568px;
            height: 48px;
        }
        .auto-style23 {
            text-align: center;
            width: 221px;
            height: 48px;
        }
        .auto-style24 {
            height: 48px;
        }
        .auto-style25 {
            text-decoration: none;
        }
        .auto-style26 {
            background-color: #FFFFFF;
        }
        .auto-style27 {
            height: 59px;
            text-align: center;
            width: 568px;
        }
        .auto-style28 {
            height: 59px;
            text-align: center;
            width: 221px;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44361/視訊背景.jpg'); background-size:cover; background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style2"><span class="auto-style3" style="font-family: 'Noto Sans CJK TC Medium'">歡迎來到快樂空間</span></h1>
        </div>
        <table class="auto-style4">
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style28">
                    <asp:Label ID="Label_account" runat="server" Text="帳號" Font-Names="Noto Sans CJK TC Medium"></asp:Label>
                    <asp:TextBox ID="TextBox_account" runat="server" CssClass="auto-style9" Height="22px" OnTextChanged="TextBox_account_TextChanged" Width="150px" Font-Names="Noto Sans CJK TC Medium"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label_password" runat="server" Text="密碼" Font-Names="Noto Sans CJK TC Medium"></asp:Label>
                    <asp:TextBox ID="TextBox_password" runat="server" CssClass="auto-style10" Height="20px" OnTextChanged="TextBox_password_TextChanged" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17">
                    <asp:Button ID="Button_login" runat="server" Height="31px" Text="登入" Width="67px" BackColor="White" BorderColor="White" Font-Bold="True" Font-Names="Noto Sans CJK TC Medium" Font-Size="Medium" OnClick="Button_login_Click" />
                </td>
                <td class="auto-style18">
                    <asp:LinkButton ID="LinkButton_entry" runat="server" EnableTheming="True" OnClick="LinkButton_entry_Click" Width="65px" BackColor="White" CssClass="auto-style25" Font-Names="Noto Sans CJK TC Medium" ForeColor="#643308" Height="27px" Visible="False">進入商店</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style20">
                    <asp:DetailsView ID="clientDetailsView" runat="server" AutoGenerateRows="False" CssClass="auto-style26" DataSourceID="SqlDataSource1" EmptyDataText="帳號或密碼錯誤" Font-Names="Noto Sans CJK TC Medium" Height="50px" OnPageIndexChanging="clientDetailsView_PageIndexChanging" Visible="False" Width="217px">
                        <Fields>
                            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                            <asp:BoundField DataField="user_money" HeaderText="user_money" SortExpression="user_money" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [user_name], [user_money] FROM [userData] WHERE (([user_name] = @user_name) AND ([user_password] = @user_password))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox_account" Name="user_name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox_password" Name="user_password" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style24"></td>
            </tr>
        </table>
    </form>
</body>
</html>
