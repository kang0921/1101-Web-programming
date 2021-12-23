<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="midsim.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: 32pt;
            color: #6375B3;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 75px;
        }
        .auto-style4 {
            height: 75px;
            text-align: center;
            width: 530px;
        }
        .auto-style5 {
            width: 485px;
            text-align: center;
        }
        .auto-style6 {
            height: 75px;
            width: 485px;
            text-align: center;
        }
        .auto-style7 {
            width: 530px;
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            font-size: 24px;
        }
        .auto-style10 {            
            color: #6375B3;
            font-size: x-large;
        }
        .button{
            font-size: 20px;
            font-family: 'Gen Jyuu Gothic Medium';
            background-color: white;
            border-color: #FFD7BD;
            border-style: Double;
            border-width: 5px;
            color: #AE4427;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            font-size: 20px;
        }
        .auto-style13 {
            width: 530px;
        }
        .auto-style14 {
            font-size: large;
            margin-right: 2px;
        }
    </style>
</head>
<body style="background-position: center center; background-size: cover; font-family: 'Gen Jyuu Gothic Medium'; background-image: url('卡納赫拉桌布手工餅乾.jpg'); background-repeat: no-repeat; background-attachment: fixed; height: 307px;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            歡迎來到工具間</div>
        <table class="auto-style2" style="position: relative">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style4">
                    <asp:Label ID="phoneLB" runat="server" CssClass="auto-style10" Text="電話"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="phoneTB" runat="server" CssClass="auto-style11" Height="35px" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="phoneDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT userName, userPhone FROM userData WHERE (userPhone = @userPhone)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="phoneTB" Name="userPhone" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="loginBT" runat="server" CssClass="button" Text="登入" BorderColor="#FFD7BD" BorderStyle="Double" OnClick="loginBT_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="entryBT" runat="server" CssClass="button" Text="進入網站" Visible="False" PostBackUrl="~/toolRoom.aspx" />
                </td>
                <td class="auto-style8">
                    <asp:DetailsView ID="userDetailsView" runat="server" Height="50px" Width="357px" AutoGenerateRows="False" BackColor="White" CssClass="auto-style12" DataSourceID="phoneDetail" Visible="False">
                        <Fields>
                            <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                            <asp:BoundField DataField="userPhone" HeaderText="userPhone" SortExpression="userPhone" />
                        </Fields>
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:GridView ID="toolGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style14" DataSourceID="userUseDetail" GridLines="Horizontal" Font-Names="Gen Jyuu Gothic Medium" Width="523px" DataKeyNames="工具號">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="工具號" HeaderText="工具號" InsertVisible="False" ReadOnly="True" SortExpression="工具號" />
                            <asp:BoundField DataField="工具名" HeaderText="工具名" SortExpression="工具名" />
                            <asp:BoundField DataField="擁有者姓名" HeaderText="擁有者姓名" SortExpression="擁有者姓名" />
                            <asp:BoundField DataField="開始使用時間" HeaderText="開始使用時間" SortExpression="開始使用時間" />
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
                <td class="auto-style8">
                    <asp:SqlDataSource ID="userUseDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Id AS 工具號, toolName AS 工具名, ownerName AS 擁有者姓名, startDate AS 開始使用時間 FROM toolData WHERE (userName = @userName)">
                        <SelectParameters>
                            <asp:SessionParameter Name="userName" SessionField="userName" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="toolLB" runat="server" CssClass="auto-style10" Text="工具名"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="toolTB" runat="server" CssClass="auto-style11" Height="35px" Width="205px" Font-Names="Gen Jyuu Gothic Medium"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:SqlDataSource ID="getToolDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO toolData(toolName, ownerName, userName, startDate) VALUES (@toolName, @userName, @userName, GETDATE())" SelectCommand="SELECT toolName FROM toolData WHERE (toolName = @toolName)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="toolTB" Name="toolName" PropertyName="Text" />
                            <asp:SessionParameter Name="userName" SessionField="userName" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="toolTB" Name="toolName" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="addToolBT" runat="server" Text="新增工具"  CssClass="button" OnClick="addToolBT_Click" />
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
