<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start1.aspx.cs" Inherits="Chap05.Start1" %>

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
			<asp:Button ID="btn_1" Text="Redirect实现跳转" runat="server" OnClick="btn_1_Click" />
			<br />
			<asp:Button ID="btn_2" Text="Transfer实现跳转" runat="server" OnClick="btn_2_Click" />
			<br />
			<asp:Button ID="btn_3" Text="PostBackUrl实现跳转" runat="server" PostBackUrl="~/Start1.aspx" />
		</div>

		<div class="T">
			名称：<asp:TextBox ID="tb_1" runat="server"></asp:TextBox>
			<br />
			网站：<asp:TextBox ID="tb_2" runat="server"></asp:TextBox>
			<br />
			<asp:Button ID="btn_4" runat="server" Text="添加超链接" />
			<br />
			<asp:TextBox ID="tb_3" runat="server"></asp:TextBox>
			<br />
			<asp:Panel ID="panel_1" runat="server"></asp:Panel>
		</div>

	</form>
</body>
</html>
