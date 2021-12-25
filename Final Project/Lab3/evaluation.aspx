<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evaluation.aspx.cs" Inherits="Lab3.evaluation" %>

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
            height: 264px;
        }
        .auto-style15 {
            width: 464px;
            text-align: center;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style22 {
            width: 464px;
            height: 15px;
        }
        .auto-style4 {
            position: relative;
            left: 19px;
            top: 0px;
            width: 231px;
            height: 34px;
        }
        .auto-style31 {
            position: relative;
            left: 10px;
            top: 0px;
            width: 441px;
            height: 297px;
        }
        .auto-style32 {
            width: 252px;
            height: 339px;
        }
        .auto-style33 {
            width: 72px;
            height: 339px;
        }
        .auto-style34 {
            width: 127px;
        }
        .auto-style40 {
            width: 464px;
            height: 67px;
            text-align: left;
        }
        .auto-style42 {
            height: 106px;
            width: 127px;
        }
        .auto-style44 {
            width: 388px;
            height: 339px;
        }
        .auto-style46 {
            width: 181px;
            height: 106px;
        }
        .auto-style47 {
            width: 181px;
        }
        .auto-style51 {
            width: 127px;
            height: 339px;
        }
        .auto-style52 {
            width: 388px;
            text-align: center;
        }
        .auto-style53 {
            width: 181px;
            height: 73px;
        }
        .auto-style56 {
            height: 73px;
            width: 127px;
        }
        .auto-style57 {
            width: 181px;
            height: 339px;
        }
        .auto-style59 {
            width: 388px;
            height: 67px;
        }
        .auto-style60 {
            width: 388px;
            height: 36px;
        }
        .auto-style61 {
            width: 464px;
            height: 36px;
            text-align: left;
        }
        .auto-style62 {
            width: 388px;
            height: 73px;
        }
        .auto-style63 {
            width: 464px;
            height: 73px;
            text-align: left;
        }
        </style>
</head>
<body style="background-image: url('角落生物賞櫻.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        
        <div class="auto-style1" style="font-family: 'Gen Jyuu Gothic Medium'; color: #FA839A; font-size: 40px;">
            角落櫻花商品心得評價</div>
        <div>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style53"></td>
                <td class="auto-style62">
                    </td>
                <td class="auto-style63" colspan="2">
                    <asp:Label ID="nameLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="暱稱" CssClass="auto-style22"></asp:Label>
                    <asp:TextBox ID="nameTB" runat="server" CssClass="auto-style4" Height="30px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style56"></td>
            </tr>
            <tr>
                <td class="auto-style46" rowspan="2">
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
                </td>
                <td class="auto-style59">
                    &nbsp;</td>
                <td class="auto-style40" colspan="2">&nbsp;<asp:DropDownList ID="drinkList" runat="server" AutoPostBack="True" DataSourceID="drinkData" DataTextField="drink_name" DataValueField="drink_id" OnSelectedIndexChanged="drinkList_SelectedIndexChanged" BackColor="#FDE9E8" CssClass="auto-style12" Font-Names="Gen Jyuu Gothic Medium" Width="200px" Font-Size="14pt" Height="34px">
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Label ID="drinkPriceLB" runat="server" Text="X元" Font-Names="Gen Jyuu Gothic Medium" Font-Size="22pt" CssClass="auto-style17" ForeColor="#FA839A" Visible="False"></asp:Label>
                    </td>
                <td class="auto-style42" rowspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style60">
                    &nbsp;</td>
                <td class="auto-style61" colspan="2">
                    <asp:Label ID="textLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="飲品心得與評價" CssClass="auto-style22"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style57">
                    <asp:SqlDataSource ID="evalDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO evalTable(drink_id, userName, evalStar, evalText) VALUES (@drinkId, @name, @star, @text)" SelectCommand="SELECT drinkTable.* FROM drinkTable">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="drinkList" Name="drinkId" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="nameTB" Name="name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="starRBL" Name="star" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="textTB" Name="text" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="drinkDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="drinkDataSelect" Height="50px" Visible="False" Width="207px" BackColor="#FDE9E8" Font-Names="Gen Jyuu Gothic Medium">
                        <Fields>
                            <asp:BoundField DataField="drink_qt" HeaderText="drink_qt" SortExpression="drink_qt" />
                            <asp:BoundField DataField="drink_price" HeaderText="drink_price" SortExpression="drink_price" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td class="auto-style44">
                    <asp:Image ID="drinkImage" runat="server" Height="271px" Width="418px" />
                </td>
                <td class="auto-style33">
                    <asp:RadioButtonList ID="starRBL" runat="server" BackColor="White" Font-Names="Gen Jyuu Gothic Medium" Font-Size="20pt" ForeColor="#FA839A" Height="26px" Width="79px" AutoPostBack="True" OnSelectedIndexChanged="starRBL_SelectedIndexChanged">
                        <asp:ListItem>5星</asp:ListItem>
                        <asp:ListItem>4星</asp:ListItem>
                        <asp:ListItem>3星</asp:ListItem>
                        <asp:ListItem>2星</asp:ListItem>
                        <asp:ListItem>1星</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="textTB" runat="server" CssClass="auto-style31" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style15" colspan="2">
                    <asp:Label ID="stateLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="26pt" ForeColor="#FF3300" CssClass="auto-style22" BackColor="White" Visible="False"></asp:Label>
                    </td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style52">
                    <asp:Button ID="backBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="回首頁" Width="129px" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="48px" PostBackUrl="~/Default.aspx"/>
                    </td>
                <td class="auto-style15" colspan="2">
                    <strong><asp:Button ID="submitBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="提交評價" Width="123px" OnClick="submitBT_Click" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px" />
                    </strong>
                    </td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
