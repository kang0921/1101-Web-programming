<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cash.aspx.cs" Inherits="Lab3.cash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 251px;
        }
        .auto-style4 {
            width: 307px;
        }
        .auto-style22 {
            font-size: large;
        }
        .auto-style28 {
            width: 307px;
            text-align: center;
            height: 30px;
        }
        .auto-style33 {
            width: 663px;
            height: 75px;
        }
        .auto-style34 {
            width: 307px;
            height: 75px;
        }
        .auto-style35 {
            height: 75px;
        }
        .auto-style39 {
            width: 663px;
            height: 66px;
        }
        .auto-style40 {
            width: 307px;
            height: 66px;
        }
        .auto-style41 {
            height: 66px;
        }
        .auto-style42 {
            width: 663px;
            height: 62px;
        }
        .auto-style43 {
            width: 307px;
            height: 62px;
        }
        .auto-style44 {
            height: 62px;
        }
        .auto-style45 {
            width: 663px;
            height: 20px;
        }
        .auto-style46 {
            width: 307px;
            text-align: center;
            height: 20px;
        }
        .auto-style47 {
            height: 20px;
        }
        .auto-style48 {
            font-size: x-large;
        }
        .auto-style49 {
            width: 663px;
            height: 30px;
        }
        .auto-style50 {
            height: 30px;
        }
        </style>
</head>
<body style="background-position: center center; background-image: url('角落生物賞櫻.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; position: relative;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-family: 'Noto Sans CJK TC Medium'; color: #FA839A; font-size: 40px;">
            角落櫻花會員儲值</div>
        <div>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style40">
                    &nbsp;
                    <div class="auto-style1">
                    <asp:DetailsView ID="cashDetailsView" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="cashDataSource" Height="50px" Width="293px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Font-Names="Noto Sans CJK TC Medium" CssClass="auto-style48" Visible="False" ForeColor="Black" GridLines="Horizontal">
                        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="user_name" HeaderText="帳號" SortExpression="user_name" />
                            <asp:BoundField DataField="user_money" HeaderText="儲值金" SortExpression="user_money" />
                        </Fields>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="White" />
                    </asp:DetailsView>
                    </div>
                </td>
                <td class="auto-style41">
                    <asp:SqlDataSource ID="cashDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_name, user_money FROM userData WHERE (user_name = @inputName)" UpdateCommand="UPDATE userData SET user_money = @money WHERE (user_name = @userID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="cashIDTB" Name="inputName" PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:SessionParameter Name="money" SessionField="cashMoney" />
                            <asp:SessionParameter Name="userID" SessionField="cashID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style40">
                    <asp:Label ID="cashIDLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="帳號" CssClass="auto-style22"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="cashIDTB" runat="server" CssClass="auto-style4" Height="30px" Width="220px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style43">
                    <asp:Label ID="cashNumLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="金額" CssClass="auto-style22"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="cashNumTB" runat="server" CssClass="auto-style4" Height="30px" Width="220px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" TextMode="Number" min="1" max="10000000" step="1"></asp:TextBox>
                </td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style28">
                    <asp:Label ID="errorMsgLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="Red" CssClass="auto-style22" BackColor="White" Visible="False"></asp:Label>
                </td>
                <td class="auto-style50"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style34">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="cashBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="加值" Width="110px" OnClick="login_Button_Click" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px" />
                    &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="trackBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="查詢" Width="110px" OnClick="trackBT_Click" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px"/>
                    &nbsp;&nbsp;
                </td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style46">
                    <asp:Button ID="backBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="回首頁" Width="107px" OnClick="login_Button_Click" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px" PostBackUrl="~/Default.aspx"/>
                </td>
                <td class="auto-style47"></td>
            </tr>
        </table>
    </form>
</body>
</html>
