<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Lab3.signup" %>

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
        .auto-style22 {
            font-size: large;
        }
        .auto-style78 {
            width: 100%;
        }
        .auto-style79 {
            width: 644px;
        }
        .auto-style80 {
            width: 443px;
        }
        .auto-style81 {
            position: relative;
            left: 18px;
            top: 0px;
        }
        .auto-style82 {
            text-align: center;
        }
        .auto-style83 {
            width: 443px;
            text-align: center;
        }
        .auto-style93 {
            width: 644px;
            height: 68px;
        }
        .auto-style94 {
            width: 443px;
            height: 68px;
        }
        .auto-style95 {
            height: 68px;
        }
        .auto-style96 {
            width: 644px;
            height: 67px;
        }
        .auto-style97 {
            width: 443px;
            height: 67px;
        }
        .auto-style98 {
            height: 67px;
        }
        .auto-style99 {
            width: 644px;
            height: 69px;
        }
        .auto-style100 {
            width: 443px;
            height: 69px;
        }
        .auto-style101 {
            height: 69px;
        }
        .auto-style102 {
            font-size: 16pt;
        }
        </style>
</head>
<body style="background-position: center center; background-image: url('角落生物賞櫻.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-family: 'Gen Jyuu Gothic Medium'; color: #FA839A; font-size: 40px;">
            角落櫻花會員註冊<br />
        </div>
        <table class="auto-style78">
            <tr>
                <td class="auto-style79">&nbsp;</td>
                <td class="auto-style80">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style93"></td>
                <td class="auto-style94">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="signupNameLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="帳號" CssClass="auto-style22"></asp:Label>
                &nbsp;&nbsp;
                    <asp:TextBox ID="signupNameTB" runat="server" Height="30px" Width="200px" CssClass="auto-style81" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style95"></td>
            </tr>
            <tr>
                <td class="auto-style96"></td>
                <td class="auto-style97">
                    <asp:Label ID="signupPasswordLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="設定密碼" CssClass="auto-style22"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="signupPasswordTB" runat="server" Height="30px" Width="200px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style98"></td>
            </tr>
            <tr>
                <td class="auto-style99"></td>
                <td class="auto-style100">
                    <asp:Label ID="checkPasswordLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="密碼確認" CssClass="auto-style22"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="checkPasswordTB" runat="server" Height="30px" Width="200px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style101"></td>
            </tr>
            <tr>
                <td class="auto-style99"></td>
                <td class="auto-style100">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="phoneLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="電話" CssClass="auto-style22"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="phoneTB" runat="server" Height="30px" Width="200px" TextMode="Phone" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style101"></td>
            </tr>
            <tr>
                <td class="auto-style96"></td>
                <td class="auto-style97">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="addressLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="地址" CssClass="auto-style22"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="addressTB" runat="server" Height="30px" Width="306px" Font-Names="Noto Sans CJK TC Medium" Font-Size="14pt" CssClass="auto-style102"></asp:TextBox>
                </td>
                <td class="auto-style98"></td>
            </tr>
            <tr>
                <td class="auto-style79">&nbsp;</td>
                <td class="auto-style83">
                    <asp:Label ID="ErrorLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="Red" CssClass="auto-style22" BackColor="White" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style79">&nbsp;</td>
                <td class="auto-style80">
                    <div class="auto-style82">
                        <asp:Button ID="signupFinishBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="完成註冊" Width="160px" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="62px" OnClick="signupFinishBT_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="backBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="回首頁" Width="126px" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="62px" PostBackUrl="~/Default.aspx"/>
                    </div>
                    <asp:SqlDataSource ID="userSignupDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO userData(user_name, user_password, user_phone, user_address) VALUES (@name, @password, @phone, @address)" SelectCommand="SELECT user_name, user_password, user_phone, user_address FROM userData">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="signupNameTB" Name="name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="signupPasswordTB" Name="password" PropertyName="Text" />
                            <asp:ControlParameter ControlID="phoneTB" Name="phone" PropertyName="Text" />
                            <asp:ControlParameter ControlID="addressTB" Name="address" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <br />
                    <div class="auto-style82">
                    <asp:GridView ID="userGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="userSignupDataSource" ForeColor="#333333" GridLines="None" Width="468px" Font-Names="Noto Sans CJK TC Medium" Font-Size="14pt" Visible="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="user_name" HeaderText="姓名" SortExpression="user_name" />
                            <asp:BoundField DataField="user_password" HeaderText="密碼" SortExpression="user_password" />
                            <asp:BoundField DataField="user_phone" HeaderText="電話" SortExpression="user_phone" />
                            <asp:BoundField DataField="user_address" HeaderText="住址" SortExpression="user_address" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
