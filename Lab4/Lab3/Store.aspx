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
            width: 484px;
        }
        .auto-style4 {
            width: 484px;
            height: 347px;
            text-align: center;
        }
        .auto-style7 {
            height: 34px;
        }
        .auto-style8 {
            text-align: center;
            width: 484px;
            height: 34px;
        }
        .auto-style9 {
            height: 45px;
        }
        .auto-style10 {
            text-align: center;
            width: 484px;
            height: 45px;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style14 {
            height: 34px;
            width: 422px;
        }
        .auto-style15 {
            height: 45px;
            width: 422px;
        }
        .auto-style16 {
            width: 422px;
        }
        .auto-style17 {
            height: 66px;
            width: 422px;
        }
        .auto-style18 {
            text-align: center;
            width: 484px;
            height: 66px;
        }
        .auto-style19 {
            height: 66px;
        }
        .auto-style20 {
            width: 422px;
            height: 347px;
        }
        .auto-style21 {
            height: 347px;
            text-align: center;
        }
    </style>
</head>
<body style="background-image: url('角落生物賞櫻.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-family: 'Gen Jyuu Gothic Medium'; color: #FA839A; font-size: 40px;">
            歡迎來到角落櫻花</div>
        <div>
        </div>
        <table class="auto-style2" style="position: relative">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style8">
                    <asp:Label ID="userShow_LB" runat="server" Text="將顯示使用者清單" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt"></asp:Label>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style10">
                                <asp:Button ID="order_BT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="order_BT_Click" Text="前往訂購" BorderWidth="3px" Font-Size="16pt" ForeColor="#FA839A" Width="120px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="turncateTable_BT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="turncat_BT_Click" Text="重建表單" BorderWidth="3px" Font-Size="16pt" ForeColor="#FA839A" Width="120px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="drinkList" runat="server" AutoPostBack="True" DataSourceID="drinkData" DataTextField="drink_name" DataValueField="drink_id" OnSelectedIndexChanged="drinkList_SelectedIndexChanged" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Width="200px" Font-Size="14pt" Height="34px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="drinkPrice_LB" runat="server" Text="X元" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="drinkQt_LB" runat="server" style="position: relative" Text="庫存：X個" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt"></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    <asp:DropDownList ID="cupList" runat="server" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnSelectedIndexChanged="cupList_SelectedIndexChanged" Visible="False" Font-Size="18pt" Width="90px">
                    </asp:DropDownList>
&nbsp;
                    <asp:Label ID="cupLB" runat="server" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Text="杯" Visible="False" Font-Size="18pt"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="sweetList" runat="server" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Visible="False" Font-Size="18pt" Height="34px" OnSelectedIndexChanged="sweetList_SelectedIndexChanged" Width="90px">
                        <asp:ListItem>全糖</asp:ListItem>
                        <asp:ListItem>半糖</asp:ListItem>
                        <asp:ListItem>少糖</asp:ListItem>
                        <asp:ListItem>微糖</asp:ListItem>
                        <asp:ListItem>無糖</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:DropDownList ID="iceList" runat="server" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Visible="False" Font-Size="18pt" Height="34px" Width="90px">
                        <asp:ListItem>正常</asp:ListItem>
                        <asp:ListItem>少冰</asp:ListItem>
                        <asp:ListItem>去冰</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="addItemBT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="addItemBT_Click" Text="添加" Visible="False" Width="100px" BorderWidth="3px" Font-Size="16pt" ForeColor="#FA839A" />
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style4">
                    <asp:Image ID="drinkImage" runat="server" Height="271px" Width="418px" />
                </td>
                <td class="auto-style21">
                    <asp:GridView ID="orderItemGridView" runat="server" AutoGenerateColumns="False" BackColor="White" DataKeyNames="orderItem_id" DataSourceID="orderItemDataSource" Font-Names="Gen Jyuu Gothic Light" Height="69px" Visible="False" Width="524px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="14pt" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="orderItem_id" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="orderItem_id" />
                            <asp:BoundField DataField="drink_name" HeaderText="飲品" SortExpression="drink_name" />
                            <asp:BoundField DataField="num" HeaderText="數量" SortExpression="num" />
                            <asp:BoundField DataField="sweet" HeaderText="甜度" SortExpression="sweet" />
                            <asp:BoundField DataField="ice" HeaderText="冰度" SortExpression="ice" />
                            <asp:BoundField DataField="subtotal" HeaderText="小計" SortExpression="subtotal" ReadOnly="True" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
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
                    <asp:SqlDataSource ID="orderItemDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO orderItemTable(drink_id, order_id, num, sweet, ice) VALUES (@drink_id, @order_id, @num, @sweet, @ice)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT orderItemTable.orderItem_id, drinkTable.drink_name, orderItemTable.num, orderItemTable.sweet, orderItemTable.ice, orderItemTable.num * drinkTable.drink_price AS subtotal FROM drinkTable INNER JOIN orderItemTable ON drinkTable.drink_id = orderItemTable.drink_id WHERE (orderItemTable.order_id = @order_id)" DeleteCommand="DELETE FROM orderItemTable WHERE (orderItem_id = @orderItem_id)" UpdateCommand="UPDATE orderItemTable SET num = @num, sweet = @sweet, ice = @ice WHERE (orderItem_id = @orderItem_id)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="orderItemGridView" Name="orderItem_id" PropertyName="SelectedDataKey" />
                        </DeleteParameters>
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
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="orderItemGridView" Name="num" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="orderItemGridView" Name="sweet" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="orderItemGridView" Name="ice" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="orderItemGridView" Name="orderItem_id" PropertyName="SelectedDataKey" />
                        </UpdateParameters>
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
