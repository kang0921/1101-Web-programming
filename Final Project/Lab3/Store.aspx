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
            position: relative;
            height: 1008px;
            top: 2px;
            left: 10px;
            z-index: 1;
        }
        .auto-style3 {
            width: 690px;
        }
        .auto-style4 {
            width: 690px;
            height: 254px;
            text-align: center;
        }
        .auto-style10 {
            text-align: center;
            width: 690px;
            height: 45px;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style18 {
            text-align: center;
            width: 690px;
            height: 66px;
        }
        .auto-style21 {
            height: 254px;
            text-align: center;
        }
        .auto-style22 {
            text-align: center;
            width: 690px;
            height: 42px;
        }
        .auto-style26 {
            text-align: center;
        }
        .auto-style27 {
            text-align: left;
        }
        .auto-style28 {
            margin-right: 5px;
        }
    </style>
</head>
<body style="background-image: url('角落生物賞櫻.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        
        <div class="auto-style1" style="font-family: 'Gen Jyuu Gothic Medium'; color: #FA839A; font-size: 40px;">
            歡迎來到角落櫻花</div>
        <div>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="userShow_LB" runat="server" Text="將顯示使用者清單" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt" BackColor="#FDE9E8"></asp:Label>
                </td>
                <td rowspan="2">
                        <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                                <asp:Button ID="order_BT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="order_BT_Click" Text="前往訂購" BorderWidth="3px" Font-Size="16pt" ForeColor="#FA839A" Width="120px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="turncateTable_BT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="turncat_BT_Click" Text="重建表單" BorderWidth="3px" Font-Size="16pt" ForeColor="#FA839A" Width="120px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="backMainBT" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" runat="server" Text="回首頁"  Width="120px" BorderWidth="3px" Font-Size="16pt" ForeColor="#FA839A" OnClick="cancelBT_Click" PostBackUrl="~/Default.aspx"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:DropDownList ID="drinkList" runat="server" AutoPostBack="True" DataSourceID="drinkData" DataTextField="drink_name" DataValueField="drink_id" OnSelectedIndexChanged="drinkList_SelectedIndexChanged" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Width="200px" Font-Size="14pt" Height="34px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="drinkPriceLB" runat="server" Text="X元" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt" BackColor="#FDE9E8"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="drinkQtLB" runat="server" style="position: relative" Text="庫存：X個" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt" BackColor="#FDE9E8"></asp:Label>
                &nbsp;&nbsp;
                        </td>
                <td rowspan="2">
                        <asp:Label ID="errorLB" runat="server" Text="錯誤提示" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt" Visible="False" ForeColor="Red" Width="484px" Height="95px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:DropDownList ID="cupList" runat="server" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Visible="False" Font-Size="18pt" Width="90px">
                    </asp:DropDownList>
&nbsp;
                    <asp:Label ID="cupLB" runat="server" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Text="杯" Visible="False" Font-Size="18pt" BackColor="#FDE9E8"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="sweetList" runat="server" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Visible="False" Font-Size="18pt" Height="34px" Width="90px">
                        <asp:ListItem>正常</asp:ListItem>
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
                    <asp:Button ID="addItemBT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="addItemBT_Click" Text="添加" Visible="False" Width="120px" BorderWidth="3px" Font-Size="16pt" ForeColor="#FA839A" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="drinkImage" runat="server" Height="271px" Width="418px" />
                </td>
                <td class="auto-style21">
                    <div>
                    <asp:GridView ID="orderItemGridView" runat="server" AutoGenerateColumns="False" BackColor="White" DataKeyNames="orderItem_id,drink_id" DataSourceID="orderItemDataSource" Font-Names="Gen Jyuu Gothic Light" Height="65px" Visible="False" Width="629px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="14pt" GridLines="Horizontal" OnRowDataBound="orderItemGridView_RowDataBound" OnRowDeleted="orderItemGridView_RowDeleted" CssClass="auto-style28">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:TemplateField HeaderText="orderItem_id" InsertVisible="False" SortExpression="orderItem_id" Visible="False">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("orderItem_id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderItem_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="飲品" SortExpression="drink_name">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="editDrinkNameList" runat="server" DataSourceID="editSqlDataSource" DataTextField="drink_name" DataValueField="drink_id" SelectedValue='<%# Bind("drink_id", "{0}") %>'>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="editSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_id], [drink_name] FROM [drinkTable] WHERE ([drink_id] &gt; @drink_id)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="0" Name="drink_id" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("drink_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="杯數" SortExpression="num">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Height="19px" Text='<%# Bind("num") %>' Width="65px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="itemCupLB" runat="server" Text='<%# Bind("num") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="甜度" SortExpression="sweet">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("sweet") %>'>
                                        <asp:ListItem>正常</asp:ListItem>
                                        <asp:ListItem>半糖</asp:ListItem>
                                        <asp:ListItem>少糖</asp:ListItem>
                                        <asp:ListItem>微糖</asp:ListItem>
                                        <asp:ListItem>無糖</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("sweet") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="冰度" SortExpression="ice">
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("ice") %>'>
                                        <asp:ListItem>正常</asp:ListItem>
                                        <asp:ListItem>少冰</asp:ListItem>
                                        <asp:ListItem>去冰</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="小計" SortExpression="subtotal">
                                <EditItemTemplate>
                                    <asp:Label ID="subTotalLB" runat="server" Text='<%# Eval("subtotal") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="subTotalLB" runat="server" Text='<%# Bind("subtotal") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="drink_id" InsertVisible="False" SortExpression="drink_id" Visible="False">
                                <EditItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("drink_id") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("drink_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="drinkData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_id], [drink_name] FROM [drinkTable]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Label ID="totalLB" runat="server" Text="總價" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt" Visible="False" BackColor="#FDE9E8"></asp:Label>
                        </td>
            </tr>
            <tr>
                <td class="auto-style3">
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
                </td>
                <td class="auto-style27">
                        <asp:Button ID="checkBT" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" runat="server" Text="確認訂購" Width="132px" BorderWidth="3px" Font-Size="16pt" ForeColor="#FA839A" OnClick="checkBT_Click" Visible="False" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="cancelBT" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" runat="server" Text="取消訂購"  Width="137px" BorderWidth="3px" Font-Size="16pt" ForeColor="#FA839A" OnClick="cancelBT_Click" Visible="False"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:DetailsView ID="drinkDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="drinkDataSelect" Height="50px" Visible="False" Width="207px" BackColor="#FDE9E8" Font-Names="Gen Jyuu Gothic Medium">
                        <Fields>
                            <asp:BoundField DataField="drink_qt" HeaderText="drink_qt" SortExpression="drink_qt" />
                            <asp:BoundField DataField="drink_price" HeaderText="drink_price" SortExpression="drink_price" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="orderItemDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO orderItemTable(drink_id, order_id, num, sweet, ice) VALUES (@drink_id, @order_id, @num, @sweet, @ice)" SelectCommand="SELECT drinkTable.drink_name, orderItemTable.num, orderItemTable.sweet, orderItemTable.ice, orderItemTable.num * drinkTable.drink_price AS subtotal, drinkTable.drink_id, orderItemTable.orderItem_id FROM drinkTable INNER JOIN orderItemTable ON drinkTable.drink_id = orderItemTable.drink_id WHERE (orderItemTable.order_id = @order_id)" DeleteCommand="DELETE FROM orderItemTable WHERE (orderItem_id = @orderItem_id)" UpdateCommand="UPDATE orderItemTable SET num = @num, sweet = @sweet, ice = @ice, drink_id = @drink_id WHERE (orderItem_id = @orderItem_id)">
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
                            <asp:ControlParameter ControlID="orderItemGridView" Name="drink_id" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="orderItemGridView" Name="orderItem_id" PropertyName="SelectedDataKey" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="clientDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_name FROM userData" UpdateCommand="UPDATE userData SET user_money = @user_money WHERE (user_name = @user_name)">
                        <UpdateParameters>
                            <asp:SessionParameter Name="user_money" SessionField="money" />
                            <asp:SessionParameter Name="user_name" SessionField="name" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="cancelOrderDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM orderItemTable WHERE (order_id = @order_id)" SelectCommand="SELECT drink_id FROM orderItemTable">
                        <DeleteParameters>
                            <asp:SessionParameter Name="order_id" SessionField="order_id" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="drinkQtDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT orderItemTable.drink_id, SUM(orderItemTable.num) AS totalNum, drinkTable.drink_name, drinkTable.drink_qt FROM orderItemTable INNER JOIN drinkTable ON orderItemTable.drink_id = drinkTable.drink_Id WHERE (orderItemTable.order_id = @order_id) GROUP BY orderItemTable.drink_id, drinkTable.drink_name, drinkTable.drink_qt" UpdateCommand="UPDATE drinkTable SET drink_qt = @drink_qt WHERE (drink_Id = @drink_Id)">
                        <SelectParameters>
                            <asp:SessionParameter Name="order_id" SessionField="order_id" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:SessionParameter Name="drink_qt" SessionField="updateQtNum" />
                            <asp:SessionParameter Name="drink_id" SessionField="updateQtId" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="qtCheckGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="drinkQtDataSource" ForeColor="#333333" GridLines="None" Visible="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="drink_id" SortExpression="drink_id">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("drink_id") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="qtIdLB" runat="server" Text='<%# Bind("drink_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="drink_name" SortExpression="drink_name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("drink_name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="qtNameLB" runat="server" Text='<%# Bind("drink_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="totalNum" SortExpression="totalNum">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("totalNum") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="totalNumLB" runat="server" Text='<%# Bind("totalNum") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="drink_qt" SortExpression="drink_qt">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("drink_qt") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="checkQtLB" runat="server" Text='<%# Bind("drink_qt") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                <td class="auto-style26">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
