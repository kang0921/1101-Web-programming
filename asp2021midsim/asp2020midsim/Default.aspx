<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="asp2020midsim.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: 32pt;
            color: #6B79B8;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            width: 554px;
        }
        .auto-style5 {
            text-align: center;
            width: 584px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style11 {
            text-align: center;
            width: 554px;
            height: 55px;
        }
        .auto-style12 {
            text-align: center;
            width: 584px;
            height: 55px;
        }
        .auto-style13 {
            text-align: center;
            height: 55px;
        }
        .auto-style21 {
            text-align: center;
            width: 554px;
            height: 60px;
        }
        .auto-style22 {
            text-align: center;
            width: 584px;
            height: 60px;
        }
        .auto-style23 {
            text-align: center;
            height: 60px;
        }
        .auto-style24 {
            margin-right: 0px;
        }
        .auto-style25 {
            text-align: center;
            width: 554px;
            height: 44px;
        }
        .auto-style26 {
            text-align: center;
            width: 584px;
            height: 44px;
        }
        .auto-style27 {
            text-align: center;
            height: 44px;
        }
        .auto-style28 {
            text-align: center;
            width: 554px;
            height: 34px;
        }
        .auto-style29 {
            text-align: center;
            width: 584px;
            height: 34px;
        }
        .auto-style30 {
            text-align: center;
            height: 34px;
        }
        .auto-style34 {
            font-size: x-large;
            color: #6B79B8;
            background-color: #FFFFCC;
        }
        .auto-style35 {
            text-align: center;
            width: 554px;
            height: 87px;
        }
        .auto-style36 {
            text-align: center;
            width: 584px;
            height: 87px;
        }
        .auto-style37 {
            text-align: center;
            height: 87px;
        }
    </style>
</head>
<body style="background-position: center center; background-size: cover; background-image: url('卡納赫拉桌布手工餅乾.jpg'); background-repeat: no-repeat; background-attachment: fixed; font-family: 'Gen Jyuu Gothic Monospace Mediu';">
    <form id="form1" runat="server">
    <p class="auto-style1">
        歡迎來到工具間</p>
        <table class="auto-style2" style="position: relative">
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style26">
                    <asp:Label ID="PhoneLB" runat="server" CssClass="auto-style34" Text="電話"></asp:Label>
&nbsp;<asp:TextBox ID="PhoneTB" runat="server" CssClass="auto-style6" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:SqlDataSource ID="nameSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT name, phone FROM memberInfoTable WHERE (phone = @phone)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="PhoneTB" Name="phone" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style29">
                    <asp:Button ID="LoginBT" runat="server" CssClass="auto-style6" Font-Names="Gen Jyuu Gothic Medium" OnClick="LoginBT_Click" Text="登入" />
&nbsp; </td>
                <td class="auto-style30">
                    <asp:DetailsView ID="nameDetailsView" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="nameSqlDataSource" ForeColor="#333333" GridLines="None" Height="50px" OnPageIndexChanging="nameDetailsView_PageIndexChanging" Visible="False" Width="170px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="EntryBT" runat="server" CssClass="auto-style6" Font-Names="Gen Jyuu Gothic Medium" Text="進入網站" Visible="False" PostBackUrl="~/toolRoom.aspx" />
                </td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="memberInfoDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [phone] FROM [memberInfoTable] WHERE ([phone] = @phone)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="PhoneTB" Name="phone" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Label ID="toolLB" runat="server" CssClass="auto-style34" Text="工具名"></asp:Label>
&nbsp; <asp:TextBox ID="toolTB" runat="server" CssClass="auto-style6" Height="28px" Width="186px"></asp:TextBox>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="addToolBT" runat="server" Font-Names="Gen Jyuu Gothic Medium" Font-Size="Large" Text="新增工具" OnClick="addToolBT_Click" />
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td class="auto-style36">&nbsp;&nbsp;&nbsp;<asp:DetailsView ID="memberInfoDetailsView" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="memberInfoDetail" EmptyDataText="帳號密碼錯誤" ForeColor="#333333" GridLines="None" Height="22px" Visible="False" Width="574px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style37"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style24" DataSourceID="ToolInUseSqlDataSource" GridLines="Horizontal" Height="166px" Width="533px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="工具號" HeaderText="工具號" InsertVisible="False" ReadOnly="True" SortExpression="工具號" />
                            <asp:BoundField DataField="工具名" HeaderText="工具名" SortExpression="工具名" />
                            <asp:BoundField DataField="擁有者姓名" HeaderText="擁有者姓名" SortExpression="擁有者姓名" />
                            <asp:BoundField DataField="開始使用日期" HeaderText="開始使用日期" SortExpression="開始使用日期" />
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
                <td class="auto-style13">
                    <asp:SqlDataSource ID="ToolInUseSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ToolTable.Id AS 工具號, ToolTable.toolName AS 工具名, ToolTable.ownerName AS 擁有者姓名, ToolTable.startDate AS 開始使用日期 FROM memberInfoTable INNER JOIN ToolTable ON memberInfoTable.name = ToolTable.userName WHERE (memberInfoTable.phone = @phone)" InsertCommand="INSERT INTO ToolTable(toolName, ownerName, userName, startDate) VALUES (@toolName, @name, @name, GETDATE())">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="toolTB" Name="toolName" PropertyName="Text" />
                            <asp:SessionParameter Name="name" SessionField="phone" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="PhoneTB" Name="phone" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    </form>
</body>
</html>
