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
            height: 35px;
        }
        .auto-style10 {
            text-align: center;
            width: 503px;
            height: 35px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style13 {
            width: 100%;
            margin-top: 9px;
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
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Label ID="userShow_LB" runat="server" Text="將顯示使用者清單" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium"></asp:Label>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="drinkList" runat="server" AutoPostBack="True" DataSourceID="drinkData" DataTextField="drink_name" DataValueField="drink_id" OnSelectedIndexChanged="drinkList_SelectedIndexChanged" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Width="173px">
                    </asp:DropDownList>
                    <asp:Label ID="drinkPrice_LB" runat="server" Text="X元" Font-Names="Gen Jyuu Gothic Medium"></asp:Label>
                    <asp:Label ID="drinkQt_LB" runat="server" style="position: relative" Text="庫存：X個" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">
                    <asp:Image ID="drinkImage" runat="server" Height="294px" Width="459px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <table class="auto-style13">
                        <tr>
                            <td class="auto-style11">
                                <asp:Button ID="order_BT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="order_BT_Click" Text="前往訂購" />
                            </td>
                            <td class="auto-style11">
                                <asp:Button ID="turncat_BT" runat="server" BackColor="#FDE9E8" BorderColor="#DFAEB2" BorderStyle="Dotted" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" OnClick="turncat_BT_Click" Text="重建表單" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <asp:SqlDataSource ID="drinkData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drink_id], [drink_name] FROM [drinkTable]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
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
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:DetailsView ID="drinkDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="drinkDataSelect" Height="50px" Visible="False" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="drink_qt" HeaderText="drink_qt" SortExpression="drink_qt" />
                            <asp:BoundField DataField="drink_price" HeaderText="drink_price" SortExpression="drink_price" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
