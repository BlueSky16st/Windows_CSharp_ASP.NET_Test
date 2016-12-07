<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start2_1.aspx.cs" Inherits="Chap05.Start2_1" %>

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
			<a href="Start2_2.aspx?id=12345">超链接传值</a>
			<hr />
			<asp:TextBox ID="tb_1" runat="server"></asp:TextBox>
			<asp:Button ID="btn_1" Text="通过Redirect传递文本框的内容" runat="server" OnClick="btn_1_Click" />
			<hr />
			<asp:CheckBox ID="cb_1" Text="通过Transfer传递是否选中" runat="server" AutoPostBack="true" OnCheckedChanged="cb_1_CheckedChanged" />
			<hr />
			<asp:DropDownList ID="ddl_1" runat="server">
				<asp:ListItem Text="Hi, " />
				<asp:ListItem Text="Hello, " />
				<asp:ListItem Text="Goodbye, " />
			</asp:DropDownList>
			<asp:DropDownList ID="ddl_2" runat="server">
				<asp:ListItem Text="C" />
				<asp:ListItem Text="C++" />
				<asp:ListItem Text="C#" />
			</asp:DropDownList>
			<asp:Button ID="btn_2" runat="server" Text="传递多个值" OnClick="btn_2_Click" />
		</div>

		<div class="T">

		</div>

	</form>
</body>
</html>
