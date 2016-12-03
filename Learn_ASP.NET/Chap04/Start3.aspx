<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start3.aspx.cs" Inherits="Chap04.Start3" %>

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

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div class="T">
			输入需要几个文本框：
			<asp:TextBox ID="tb_1" runat="server" />
			<asp:Button ID="btn_1" Text="创建文本框" runat="server" />
			<asp:Button ID="btn_2" Text="求和" runat="server" OnClick="btn_2_Click" />
			<hr />
			<asp:Panel ID="panel_1" runat="server"></asp:Panel>
		</div>

		<div class="T">
			输入内容：
			<asp:TextBox ID="tb_2" runat="server" />
			<asp:Button ID="btn_3" Text="添加至动物" runat="server" OnClick="btn_3_Click" />
			<asp:Button ID="btn_4" Text="添加至食物" runat="server" OnClick="btn_4_Click" />
			<hr />
			动物：
			<asp:ListBox ID="lb_1" runat="server">
				<asp:ListItem Text="猫" />
			</asp:ListBox>
			<hr />
			食物：
			<asp:Panel ID="panel_2" runat="server"></asp:Panel>
			<hr />
			<asp:Button ID="btn_5" Text="输出选择" runat="server" OnClick="btn_5_Click" />
			<br />
			<asp:TextBox ID="tb_3" Width="300px" runat="server" />
		</div>

	</form>
</body>
</html>
