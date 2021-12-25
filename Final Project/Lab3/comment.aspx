<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="comment.aspx.cs" Inherits="Lab3.Comment" %>

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
            height: 593px;
        }
        .auto-style3 {
            width: 241px;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style23 {
            width: 493px;
        }
        .auto-style22 {
            width: 464px;
            height: 15px;
        }
        .auto-style24 {
            width: 241px;
            height: 28px;
        }
        .auto-style25 {
            width: 493px;
            height: 28px;
            text-align: center;
        }
        .auto-style26 {
            height: 28px;
            text-align: center;
        }
        .auto-style27 {
            width: 241px;
            height: 100px;
        }
        .auto-style28 {
            width: 493px;
            height: 100px;
            text-align: center;
        }
        .auto-style29 {
            height: 100px;
        }
        .auto-style30 {
            width: 493px;
            text-align: center;
        }
    </style>
</head>
<body style="background-position: center center; background-image: url('角落生物賞櫻.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form2" runat="server">
        <div class="auto-style1" style="font-family: 'Gen Jyuu Gothic Medium'; color: #FA839A; font-size: 40px;">
            角落櫻花商品評論區</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style28"><asp:DropDownList ID="drinkList" runat="server" AutoPostBack="True" DataSourceID="drinkData" DataTextField="drink_name" DataValueField="drink_id" OnSelectedIndexChanged="drinkList_SelectedIndexChanged" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Width="200px" Font-Size="14pt" Height="34px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                    <asp:Label ID="drinkPriceLB" runat="server" Text="X元" Font-Names="Gen Jyuu Gothic Medium" Font-Size="22pt" CssClass="auto-style17" ForeColor="#FA839A" Visible="False"></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="textLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="22pt" ForeColor="#FA839A" Text="飲品心得與評價" CssClass="auto-style22"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Image ID="drinkImage" runat="server" Height="271px" Width="418px" />
                </td>
                <td class="auto-style26">
                    <asp:GridView ID="commentGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="evalDataSource" Font-Names="Noto Sans CJK TC Regular" Font-Size="16pt" ForeColor="#333333" GridLines="None" Width="519px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="userName" HeaderText="暱稱" SortExpression="userName" />
                            <asp:BoundField DataField="evalStar" HeaderText="評價星數" SortExpression="evalStar" />
                            <asp:BoundField DataField="evalText" HeaderText="心得" SortExpression="evalText" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="drinkData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_id], [drink_name] FROM [drinkTable]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="drinkDataSelect" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_qt], [drink_price] FROM [drinkTable] WHERE ([drink_id] = @drink_id)" InsertCommand="INSERT INTO orderTable(order_time, order_userphone) VALUES (GETDATE(), @order_userphone)" DeleteCommand="DELETE FROM orderTable WHERE (order_id = @order_id)">
                        <DeleteParameters>
                            <asp:SessionParameter Name="order_id" SessionField="order_id" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:SessionParameter Name="order_userphone" SessionField="phone" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="drinkList" Name="drink_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="drinkDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="drinkDataSelect" Height="50px" Visible="False" Width="207px" BackColor="#FDE9E8" Font-Names="Gen Jyuu Gothic Medium">
                        <Fields>
                            <asp:BoundField DataField="drink_qt" HeaderText="drink_qt" SortExpression="drink_qt" />
                            <asp:BoundField DataField="drink_price" HeaderText="drink_price" SortExpression="drink_price" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="evalDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT drink_id, userName, evalStar, evalText FROM evalTable WHERE (drink_id = @id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="drinkList" Name="id" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style30">
                    <asp:Button ID="backBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="回首頁" Width="129px" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="48px" PostBackUrl="~/Default.aspx"/>
                    </td>
                <td>
                    <asp:Button ID="evalBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="前往評價" Width="129px" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="48px" PostBackUrl="~/evaluation.aspx"/>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
