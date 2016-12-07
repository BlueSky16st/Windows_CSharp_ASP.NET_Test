<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start4_2.aspx.cs" Inherits="Chap05.Start4_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">
		
		.main {
			padding: 5px;
			margin: 3px;
			text-align: center;

		}

		.view {
			text-align:center;
			padding: 5px;
			margin: 3px;
			border: 1px solid rgb(210, 210, 210);
		}

		.listView {
			margin: 10px auto;
			height: 80px;
			width: 80%;
			border: 1px solid black;
		}

		.detailView {
			margin: 20px;
			display: inline-block;
			height: 200px;
			width: 30%;
			border: 1px solid black;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div class="main">
			<asp:Label ID="lb_1" CssClass="main" runat="server"></asp:Label>
			<hr />
			选择视图：
			<asp:DropDownList Width="130px" ID="ddl_1" runat="server">
				<asp:ListItem Value="listView">列表视图</asp:ListItem>
				<asp:ListItem Value="detailView">详细视图</asp:ListItem>
			</asp:DropDownList>
			<br />
			选择背景：
			<asp:DropDownList Width="130px" ID="ddl_2" runat="server">
				<asp:ListItem Value="white">白色</asp:ListItem>
				<asp:ListItem Value="blue">蓝色</asp:ListItem>
				<asp:ListItem Value="red">红色</asp:ListItem>
				<asp:ListItem Value="green">绿色</asp:ListItem>
			</asp:DropDownList>
			<br />
			<asp:Button ID="btn_1" runat="server" Text="应用" OnClick="btn_1_Click" />
			&nbsp;
			<asp:Button ID="btn_2" runat="server" Text="退出" OnClick="btn_2_Click" />
		</div>

		<asp:Panel ID="panel_1" CssClass="view" runat="server">
			<asp:Panel ID="panel_2" runat="server"></asp:Panel>
			<asp:Panel ID="panel_3" runat="server"></asp:Panel>
			<asp:Panel ID="panel_4" runat="server"></asp:Panel>
			<asp:Panel ID="panel_5" runat="server"></asp:Panel>
			<asp:Panel ID="panel_6" runat="server"></asp:Panel>
			<asp:Panel ID="panel_7" runat="server"></asp:Panel>
		</asp:Panel>

	</form>
</body>
</html>
