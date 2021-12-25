<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mailBox.aspx.cs" Inherits="Lab3.mailBox" %>

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
            height: 622px;
            position: absolute;
            top: 87px;
            left: 10px;
            z-index: 1;
        }
        .auto-style22 {
            font-size: large;
        }
        .auto-style4 {
            position: relative;
            left: 27px;
            top: 0px;
            width: 223px;
            height: 34px;
        }
        .auto-style23 {
            width: 481px;
        }
        .auto-style24 {
            width: 173px;
            height: 66px;
        }
        .auto-style25 {
            width: 173px;
            text-align: center;
        }
        .auto-style27 {
            width: 481px;
            height: 41px;
        }
        .auto-style28 {
            width: 173px;
            height: 41px;
            text-align: center;
        }
        .auto-style30 {
            height: 41px;
        }
        .auto-style31 {
            position: relative;
            left: 27px;
            top: 0px;
            width: 223px;
            height: 297px;
        }
        .auto-style32 {
            width: 410px;
        }
        .auto-style33 {
            width: 410px;
            height: 41px;
            text-align: left;
        }
        .auto-style34 {
            position: relative;
            left: 28px;
            top: 1px;
            width: 223px;
            height: 34px;
        }
        .auto-style35 {
            width: 410px;
            height: 82px;
            text-align: center;
        }
        .auto-style36 {
            width: 481px;
            height: 82px;
        }
        .auto-style37 {
            width: 173px;
            height: 82px;
            text-align: center;
        }
        .auto-style38 {
            height: 82px;
        }
        .auto-style39 {
            width: 481px;
            height: 66px;
        }
        .auto-style40 {
            width: 410px;
            height: 66px;
        }
        .auto-style41 {
            height: 66px;
        }
        .auto-style43 {
            width: 173px;
            text-align: center;
            height: 66px;
        }
        .auto-style44 {
            width: 481px;
            height: 325px;
        }
        .auto-style45 {
            width: 173px;
            text-align: center;
            height: 325px;
        }
        .auto-style46 {
            width: 410px;
            height: 325px;
        }
        .auto-style47 {
            height: 325px;
        }
    </style>
</head>
<body style="background-position: center center; background-image: url('角落生物賞櫻.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">
    <form id="form2" runat="server">
        <div class="auto-style1" style="font-family: 'Gen Jyuu Gothic Medium'; color: #FA839A; font-size: 40px;">
            角落櫻花意見箱</div>
        <div>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Label ID="nameLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="名字(匿名)" CssClass="auto-style22"></asp:Label>
                    </td>
                <td class="auto-style32">
                    <asp:TextBox ID="nameTB" runat="server" CssClass="auto-style4" Height="30px" Width="300px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style43">
                    <asp:Label ID="phoneLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="電話(選填)" CssClass="auto-style22"></asp:Label>
                    </td>
                <td class="auto-style40">
                    <asp:TextBox ID="phoneTB" runat="server" CssClass="auto-style34" Height="30px" Width="300px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style41"></td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style24">
                    <asp:Label ID="emailLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="電子信箱(必填)" CssClass="auto-style22"></asp:Label>
                    </td>
                <td class="auto-style40">
                    <asp:TextBox ID="emailTB" runat="server" CssClass="auto-style4" Height="30px" Width="300px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt"></asp:TextBox>
                </td>
                <td class="auto-style41"></td>
            </tr>
            <tr>
                <td class="auto-style44"></td>
                <td class="auto-style45">
                    <asp:Label ID="textLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FA839A" Text="意見內容" CssClass="auto-style22"></asp:Label>
                    </td>
                <td class="auto-style46">
                    <asp:TextBox ID="textTB" runat="server" CssClass="auto-style31" Width="300px" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style47">
                    <asp:SqlDataSource ID="mailBoxSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT name, phone, email, text FROM mailBoxTable" InsertCommand="INSERT INTO mailBoxTable(name, phone, email, text) VALUES (@name, @phone, @email, @text)">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="nameTB" Name="name" PropertyName="Text" />
                            <asp:ControlParameter ControlID="phoneTB" Name="phone" PropertyName="Text" />
                            <asp:ControlParameter ControlID="emailTB" Name="email" PropertyName="Text" />
                            <asp:ControlParameter ControlID="textTB" Name="text" PropertyName="Text" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style37"></td>
                <td class="auto-style35">
                    <asp:Label ID="stateLB" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" ForeColor="#FF3300" Text="已提交!感謝您寶貴的建議!" CssClass="auto-style22" BackColor="White" Visible="False"></asp:Label>
                    </td>
                <td class="auto-style38">
                    </td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
                <td class="auto-style33"><strong><asp:Button ID="submitBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="提交" Width="107px" OnClick="submitBT_Click" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="backBT" runat="server" Font-Names="Noto Sans CJK TC Medium" Font-Size="18pt" Text="回首頁" Width="107px" BackColor="#FDE9E8" BorderColor="#FCBAC8" BorderStyle="Dotted" BorderWidth="3px" ForeColor="#FA839A" Height="50px" PostBackUrl="~/Default.aspx" />
                    </strong></td>
                <td class="auto-style30">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
