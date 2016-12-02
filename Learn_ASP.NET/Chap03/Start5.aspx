<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start5.aspx.cs" Inherits="Chap03.Start5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">

		.T {
			border: 3px solid black;
			margin: 6px;
			padding: 8px;
		}

		.a1 {
			text-decoration: none;
			background-color:lightsteelblue;
			color: black;
			padding: 10px;
			border-left: 1px solid black;
			border-top: 1px solid black;
		}

		.a1:hover {
			background-color: steelblue;
			color: blue;
			border: none;
			border-right: 1px solid black;
			border-bottom: 1px solid black;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div class="T">
			<asp:ListBox ID="lb_1" runat="server" SelectionMode="Multiple" Rows="8" Width="100px">
				<asp:ListItem>1</asp:ListItem>
				<asp:ListItem>2</asp:ListItem>
				<asp:ListItem>3</asp:ListItem>
				<asp:ListItem>4</asp:ListItem>
				<asp:ListItem>5</asp:ListItem>
				<asp:ListItem>6</asp:ListItem>
				<asp:ListItem>7</asp:ListItem>
				<asp:ListItem>8</asp:ListItem>
			</asp:ListBox>
			<asp:Button ID="btn_1" runat="server" Text="将选择的项添加到文本框" OnClick="btn_1_Click" />
			<br />
			<asp:TextBox ID="tb_1" runat="server" TextMode="MultiLine" Rows="8"></asp:TextBox>
		</div>

		<div class="T">
			<asp:ListBox ID="lb_2" runat="server" SelectionMode="Multiple" Rows="8" Width="100px">
				<asp:ListItem>1</asp:ListItem>
				<asp:ListItem>2</asp:ListItem>
				<asp:ListItem>3</asp:ListItem>
				<asp:ListItem>4</asp:ListItem>
				<asp:ListItem>5</asp:ListItem>
				<asp:ListItem>6</asp:ListItem>
				<asp:ListItem>7</asp:ListItem>
				<asp:ListItem>8</asp:ListItem>
			</asp:ListBox>
			<asp:Button ID="btn_2" runat="server" Text="删除选择项" OnClick="btn_2_Click" />
		</div>

		<div class="T">
			<asp:ListBox ID="lb_3" runat="server" SelectionMode="Multiple" Rows="8" Width="100px">
				<asp:ListItem>1</asp:ListItem>
				<asp:ListItem>2</asp:ListItem>
				<asp:ListItem>3</asp:ListItem>
				<asp:ListItem>4</asp:ListItem>
				<asp:ListItem>5</asp:ListItem>
				<asp:ListItem>6</asp:ListItem>
				<asp:ListItem>7</asp:ListItem>
				<asp:ListItem>8</asp:ListItem>
			</asp:ListBox>
			<asp:Button ID="btn_3" runat="server" Text=">>>" OnClick="btn_3_Click" />
			<asp:Button ID="btn_4" runat="server" Text="<<<" OnClick="btn_4_Click" />
			<asp:ListBox ID="lb_4" runat="server" SelectionMode="Multiple" Rows="8" Width="100px">
			</asp:ListBox>
		</div>

		<div class="T">
			<asp:Button ID="btn_5" runat="server" Text="生成链接" OnClick="btn_5_Click" />
			<asp:Button ID="btn_6" runat="server" Text="生成带CSS的链接" OnClick="btn_6_Click" />
			<br />
			<asp:Panel ID="Panel1" runat="server" Height="70px" BorderWidth="1px" BorderStyle="Solid" ></asp:Panel>
		</div>

		<div class="T">
			<asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/兔子 (1).jpg" Width="150">
				<asp:RectangleHotSpot Bottom="50" Left="20" Top="20" Right="50" NavigateUrl="http://www.qq.com/" AlternateText="QQ" />
				<asp:CircleHotSpot X="100" Y="50" Radius="30" AlternateText="淘宝" NavigateUrl="https://www.taobao.com/" />
				<asp:PolygonHotSpot Coordinates="80,80,120,120,130,80" NavigateUrl="https://www.baidu.com/" AlternateText="百度" />
			</asp:ImageMap>
			<asp:Button ID="btn_7" runat="server" Text="添加一个新的热区" OnClick="btn_7_Click" />
		</div>

	</form>
</body>
</html>
