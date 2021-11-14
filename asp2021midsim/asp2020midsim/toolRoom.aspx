<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toolRoom.aspx.cs" Inherits="asp2020midsim.toolRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: 30pt;
            color: #6577B5;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            font-size: larger;
        }
        .auto-style6 {
            width: 556px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            color: #6577B5;
        }
        .auto-style9 {
            margin-right: 0px;
        }
        .auto-style10 {
            width: 415px;
            text-align: center;
        }
    </style>
</head>
<body style="background-position: center center; background-size: cover; background-image: url('卡納赫拉桌布手工餅乾.jpg'); background-repeat: no-repeat; background-attachment: fixed; font-family: 'Gen Jyuu Gothic Monospace Mediu'; position: relative;">
    <form id="form1" runat="server">
        <div class="auto-style1">
        歡迎來到工具間</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="toolNameLB" runat="server" CssClass="auto-style8" Font-Names="Gen Jyuu Gothic Medium" Font-Size="18pt" Text="工具名"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="inquireToolTB" runat="server" CssClass="auto-style4" Height="32px" OnTextChanged="inquireToolTB_TextChanged" Width="202px"></asp:TextBox>
&nbsp;&nbsp; </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="inquireToolBT" runat="server" Font-Names="Gen Jyuu Gothic Medium" Font-Size="14pt" OnClick="Button1_Click" Text="查詢工具" />
                </td>
                <td class="auto-style7">
                    <asp:DetailsView ID="toolDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="toolnameSqlDataSource" Height="50px" Width="257px">
                        <Fields>
                            <asp:BoundField DataField="toolName" HeaderText="toolName" SortExpression="toolName" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="toolnameSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT toolName FROM ToolTable WHERE (toolName = @toolName)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="inquireToolTB" Name="toolName" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">
                    <asp:GridView ID="inquireToolGridView" runat="server" AutoGenerateColumns="False" CssClass="auto-style9" DataSourceID="inquireToolSqlDataSource" AutoGenerateEditButton="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="toolName" HeaderText="toolName" SortExpression="toolName" />
                            <asp:BoundField DataField="ownerName" HeaderText="ownerName" SortExpression="ownerName" />
                            <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
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
                <td class="auto-style7">
                    <asp:SqlDataSource ID="inquireToolSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT ToolTable.Id, ToolTable.toolName, ToolTable.ownerName, ToolTable.userName, memberInfoTable.phone, ToolTable.startDate FROM memberInfoTable INNER JOIN ToolTable ON memberInfoTable.name = ToolTable.userName WHERE (ToolTable.toolName = @toolName)" DeleteCommand="DELETE FROM ToolTable WHERE (toolName = @toolName)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="inquireToolGridView" Name="toolName" PropertyName="SelectedDataKey" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="inquireToolTB" Name="toolName" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
