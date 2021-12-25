<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderTracking.aspx.cs" Inherits="Lab3.orderTracking" %>

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
            height: 242px;
        }
        .auto-style22 {
            font-size: large;
        }
        .auto-style4 {
            position: relative;
            left: 27px;
            top: 0px;
            width: 186px;
            height: 43px;
        }
        .auto-style24 {
            width: 424px;
        }
        .auto-style26 {
            width: 539px;
        }
        .auto-style27 {
            width: 539px;
            height: 77px;
        }
        .auto-style28 {
            text-align: center;
            width: 424px;
            height: 77px;
        }
        .auto-style29 {
            height: 77px;
        }
        .auto-style30 {
            font-size: medium;
        }
        .auto-style31 {
            width: 424px;
            text-align: center;
        }
    </style>
</head>
<body style="background-position: center center; background-image: url('角落生物賞櫻.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form2" runat="server">
        <div class="auto-style1" style="font-family: 'Noto Sans CJK TC Medium'; color: #FA839A; font-size: 40px;">
            角落櫻花歷史訂單查詢</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="phoneLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="訂購者電話號碼" CssClass="auto-style22"></asp:Label>
                    <asp:TextBox ID="phoneTB" runat="server" CssClass="auto-style4" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td>
                    <asp:SqlDataSource ID="inputDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_name, user_phone FROM userData WHERE (user_phone = @input)" UpdateCommand="UPDATE userData SET user_money = @money WHERE (user_name = @userID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="phoneTB" Name="input" PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:SessionParameter Name="money" SessionField="cashMoney" />
                            <asp:SessionParameter Name="userID" SessionField="cashID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style28">
                    <asp:Label ID="errorMsgLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="Red" CssClass="auto-style30" BackColor="White" Visible="False"></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:DetailsView ID="inputDetailsView" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="inputDataSource" Font-Names="Noto Sans CJK TC Medium" Height="50px" Visible="False" Width="233px">
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="user_name" HeaderText="帳號" SortExpression="user_name" />
                            <asp:BoundField DataField="user_phone" HeaderText="電話" SortExpression="user_phone" />
                        </Fields>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style28"> <asp:Button ID="trackBT" runat="server" Font-Names="Noto Sans CJK TC Bold" Font-Size="18pt" Text="查詢" Width="110px" OnClick="trackBT_Click" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px"/>
                    &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="backBT" runat="server" Font-Names="Noto Sans CJK TC Bold" Font-Size="18pt" Text="回首頁" Width="120px" OnClick="trackBT_Click" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px" PostBackUrl="~/Default.aspx"/>
                    </td>
                <td class="auto-style29">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style24">
                    <asp:SqlDataSource ID="trackDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT orderTable.order_userphone, orderItemTable.drink_id, orderItemTable.order_id, orderItemTable.num, orderItemTable.sweet, orderItemTable.ice FROM orderItemTable INNER JOIN orderTable ON orderItemTable.order_id = orderTable.order_id CROSS JOIN userData WHERE (orderTable.order_userphone = @trackPhone)">
                        <SelectParameters>
                            <asp:SessionParameter Name="trackPhone" SessionField="trackPhone" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style24">
                    <asp:DetailsView ID="trackDetailsView" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="trackDataSource" Font-Names="Noto Sans CJK TC Medium" ForeColor="Black" GridLines="Vertical" Height="50px" Visible="False" Width="406px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="order_userphone" HeaderText="電話號碼" SortExpression="order_userphone" />
                            <asp:BoundField DataField="drink_id" HeaderText="飲品ID" SortExpression="drink_id" />
                            <asp:BoundField DataField="order_id" HeaderText="訂單編號" SortExpression="order_id" />
                            <asp:BoundField DataField="num" HeaderText="杯數" SortExpression="num" />
                            <asp:BoundField DataField="sweet" HeaderText="甜度" SortExpression="sweet" />
                            <asp:BoundField DataField="ice" HeaderText="冰度" SortExpression="ice" />
                        </Fields>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                    </asp:DetailsView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
