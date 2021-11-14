<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="Lab3.Store" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
            width: 503px;
        }
        .auto-style4 {
            width: 503px;
        }
        .auto-style7 {
            height: 34px;
        }
        .auto-style8 {
            text-align: center;
            width: 503px;
            height: 34px;
        }
        .auto-style9 {
            height: 45px;
        }
        .auto-style10 {
            text-align: center;
            width: 503px;
            height: 45px;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style14 {
            height: 34px;
            width: 317px;
        }
        .auto-style15 {
            height: 45px;
            width: 317px;
        }
        .auto-style16 {
            width: 317px;
        }
        .auto-style17 {
            height: 66px;
            width: 317px;
        }
        .auto-style18 {
            text-align: center;
            width: 503px;
            height: 66px;
        }
        .auto-style19 {
            height: 66px;
        }
    </style>
</head>
<body style="background-image: url('角落生物賞櫻.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-family: 'Gen Jyuu Gothic Medium'; color: #F4CB93;">
            歡迎來到角落櫻花</div>
        <div>
        </div>
        <table class="auto-style2" style="position: relative">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style8">
                    <asp:Label ID="userShow_LB" runat="server" Text="將顯示使用者清單" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium"></asp:Label>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style10">
                                <asp:Button ID="order_BT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="order_BT_Click" Text="前往訂購" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="turncateTable_BT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="turncat_BT_Click" Text="重建表單" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="drinkList" runat="server" AutoPostBack="True" DataSourceID="drinkData" DataTextField="drink_name" DataValueField="drink_id" OnSelectedIndexChanged="drinkList_SelectedIndexChanged" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Width="173px">
                    </asp:DropDownList>
                    <asp:Label ID="drinkPrice_LB" runat="server" Text="X元" Font-Names="Gen Jyuu Gothic Medium"></asp:Label>
                    <asp:Label ID="drinkQt_LB" runat="server" style="position: relative" Text="庫存：X個" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium"></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    <asp:DropDownList ID="cupList" runat="server" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnSelectedIndexChanged="cupList_SelectedIndexChanged" Visible="False">
                    </asp:DropDownList>
&nbsp;
                    <asp:Label ID="cupLB" runat="server" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Text="杯" Visible="False"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="sweetList" runat="server" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Visible="False">
                        <asp:ListItem>全糖</asp:ListItem>
                        <asp:ListItem>半糖</asp:ListItem>
                        <asp:ListItem>少糖</asp:ListItem>
                        <asp:ListItem>微糖</asp:ListItem>
                        <asp:ListItem>無糖</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:DropDownList ID="iceList" runat="server" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Visible="False">
                        <asp:ListItem>正常</asp:ListItem>
                        <asp:ListItem>少冰</asp:ListItem>
                        <asp:ListItem>去冰</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="addItemBT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="addItemBT_Click" Text="添加" Visible="False" Width="78px" />
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Image ID="drinkImage" runat="server" Height="294px" Width="459px" />
                </td>
                <td>
                    <asp:GridView ID="orderItemGridView" runat="server" AutoGenerateColumns="False" BackColor="#FDE9E8" DataKeyNames="編號" DataSourceID="orderItemDataSource" Font-Names="Gen Jyuu Gothic Light" Height="146px" Visible="False" Width="345px">
                        <Columns>
                            <asp:BoundField DataField="編號" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="編號" />
                            <asp:BoundField DataField="飲品" HeaderText="飲品" SortExpression="飲品" />
                            <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                            <asp:BoundField DataField="甜度" HeaderText="甜度" SortExpression="甜度" />
                            <asp:BoundField DataField="冰度" HeaderText="冰度" SortExpression="冰度" />
                            <asp:BoundField DataField="小計" HeaderText="小計" SortExpression="小計" ReadOnly="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="drinkData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_id], [drink_name] FROM [drinkTable]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="drinkDataSelect" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_qt], [drink_price] FROM [drinkTable] WHERE ([drink_id] = @drink_id)" InsertCommand="INSERT INTO orderTable(order_time, order_userphone) VALUES (GETDATE(), @order_userphone)">
                        <InsertParameters>
                            <asp:SessionParameter Name="order_userphone" SessionField="phone" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="drinkList" Name="drink_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style3">
                    <asp:DetailsView ID="drinkDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="drinkDataSelect" Height="50px" Visible="False" Width="207px" BackColor="#FDE9E8" Font-Names="Gen Jyuu Gothic Medium">
                        <Fields>
                            <asp:BoundField DataField="drink_qt" HeaderText="drink_qt" SortExpression="drink_qt" />
                            <asp:BoundField DataField="drink_price" HeaderText="drink_price" SortExpression="drink_price" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="orderItemDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO orderItemTable(drink_id, order_id, num, sweet, ice) VALUES (@drink_id, @order_id, @num, @sweet, @ice)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT orderItemTable.orderItem_id AS 編號, drinkTable.drink_name AS 飲品, orderItemTable.num AS 數量, orderItemTable.sweet AS 甜度, orderItemTable.ice AS 冰度, orderItemTable.num * drinkTable.drink_price AS 小計 FROM drinkTable INNER JOIN orderItemTable ON drinkTable.drink_id = orderItemTable.drink_id WHERE (orderItemTable.order_id = @order_id)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="drinkList" Name="drink_id" PropertyName="SelectedValue" />
                            <asp:SessionParameter Name="order_id" SessionField="order_id" />
                            <asp:ControlParameter ControlID="cupList" Name="num" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="sweetList" Name="sweet" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="iceList" Name="ice" PropertyName="SelectedValue" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="order_id" SessionField="order_id" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
