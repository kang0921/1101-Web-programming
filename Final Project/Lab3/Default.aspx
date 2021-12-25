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
            height: 67px;
        }
        .auto-style2 {
            width: 130%;
            position: relative;
            left: -385px;
            top: 8px;
            height: 249px;
        }
        .auto-style3 {
            width: 578px;
        }
        .auto-style4 {
            position: relative;
            left: 27px;
            top: 0px;
            width: 223px;
            height: 34px;
        }
        .auto-style5 {
            position: relative;
            left: 28px;
            top: 0px;
            width: 256px;
        }
        .auto-style7 {
            width: 375px;
            text-align: center;
        }
        .auto-style15 {
            font-size: large;
            color: #FAC5CB;
            text-decoration: none;
        }
        .auto-style16 {
            width: 578px;
            height: 52px;
        }
        .auto-style17 {
            text-align: center;
            width: 375px;
            height: 52px;
        }
        .auto-style22 {
            font-size: large;
        }
        .auto-style23 {
            width: 578px;
            height: 67px;
        }
        .auto-style24 {
            text-align: center;
            width: 375px;
            height: 67px;
        }
        .auto-style27 {
            width: 578px;
            height: 131px;
        }
        .auto-style28 {
            text-align: center;
            width: 375px;
            height: 131px;
        }
        .auto-style29 {
            text-align: center;
            width: 856px;
            height: 52px;
        }
        .auto-style30 {
            text-align: center;
            width: 856px;
            height: 67px;
        }
        .auto-style31 {
            width: 856px;
            text-align: center;
        }
        .auto-style32 {
            text-align: center;
            width: 856px;
            height: 131px;
        }
        .auto-style33 {
            width: 578px;
            height: 119px;
        }
        .auto-style34 {
            text-align: center;
            width: 856px;
            height: 119px;
        }
        .auto-style35 {
            text-align: center;
            width: 375px;
            height: 119px;
        }
        .auto-style36 {
            width: 578px;
            height: 78px;
        }
        .auto-style37 {
            width: 856px;
            text-align: center;
            height: 78px;
        }
        .auto-style38 {
            width: 375px;
            text-align: center;
            height: 78px;
        }
        </style>
</head>
<body style="background-position: center center; background-image: url('角落生物賞櫻.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-family: 'Gen Jyuu Gothic Medium'; color: #FA839A; font-size: 40px;">
            歡迎來到角落櫻花</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style34">
                    <asp:Button ID="introBT" runat="server" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt" Text="商品介紹" Width="125px" OnClick="login_Button_Click" BackColor="#FA839A" BorderColor="#FCBAC8" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" Height="50px" PostBackUrl="~/productIntro.aspx"/>
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="cashBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="會員儲值" Width="125px" OnClick="login_Button_Click" BackColor="#FA839A" BorderColor="#FCBAC8" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" Height="50px" PostBackUrl="~/cash.aspx"/>
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="suggestionBoxBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="意見箱" Width="125px" OnClick="login_Button_Click" BackColor="#FA839A" BorderColor="#FCBAC8" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" Height="50px" PostBackUrl="~/mailBox.aspx"/>
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="evaluationBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="商品評價" Width="125px" OnClick="login_Button_Click" BackColor="#FA839A" BorderColor="#FCBAC8" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" Height="50px" PostBackUrl="~/evaluation.aspx"/>
                &nbsp;&nbsp;
                    <asp:Button ID="commentBT" runat="server" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt" Text="看評價" Width="125px" BackColor="#FA839A" BorderColor="#FCBAC8" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" Height="50px" PostBackUrl="~/comment.aspx"/>
                </td>
                <td class="auto-style35">
                    </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Label ID="id_LB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="帳號" CssClass="auto-style22"></asp:Label>
                    <asp:TextBox ID="id_TB" runat="server" CssClass="auto-style4" Height="30px" Width="220px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    </td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style30">
                    <asp:Label ID="password_LB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="密碼" CssClass="auto-style22"></asp:Label>
                    <asp:TextBox ID="password_TB" runat="server" CssClass="auto-style5" Height="30px" TextMode="Password" Width="220px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style37">
                    &nbsp;<strong><asp:Button ID="loginBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="登入" Width="107px" OnClick="login_Button_Click" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px" />
                    </strong>&nbsp;&nbsp;
                    <asp:Button ID="signupBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="註冊" Width="107px" OnClick="login_Button_Click" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px" PostBackUrl="~/signup.aspx"/>
                </td>
                <td class="auto-style38">
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style31">
                    <asp:LinkButton ID="entry" runat="server" Font-Names="Noto Sans CJK TC Medium" Visible="False" PostBackUrl="~/Store.aspx" BackColor="#FFFDE4" CssClass="auto-style15" Font-Size="X-Large" Font-Underline="False" ForeColor="#D98717" Width="170px" Height="42px" BorderStyle="Double" style="">進入商店</asp:LinkButton>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style32">
                    <asp:SqlDataSource ID="clientDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_name, user_money, user_phone FROM userData WHERE (user_name = @user_name) AND (user_password = @user_password)" >
                        <SelectParameters>
                            <asp:ControlParameter ControlID="id_TB" Name="user_name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="password_TB" Name="user_password" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="clientDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="clientDetail" Height="95px" Width="380px" Font-Names="Gen Jyuu Gothic Medium" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                            <asp:BoundField DataField="user_money" HeaderText="user_money" SortExpression="user_money" />
                            <asp:BoundField DataField="user_phone" HeaderText="user_phone" SortExpression="user_phone" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            </table>
    </form>
</body>
</html>
