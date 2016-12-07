<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start5_1.aspx.cs" Inherits="Chap05.Start5_1" %>

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
			输入文本内容：<asp:TextBox ID="tb_1" runat="server"></asp:TextBox>
			<hr />
			<asp:Button ID="btn_1" runat="server" Text="获取当前时间" OnClick="btn_1_Click" />
			<asp:Label ID="lab_1" runat="server"></asp:Label>
			<hr />
			<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Start5_2.aspx">跳转到Start5_2</asp:LinkButton>
		</div>

		<div class="T">
			<asp:TextBox ID="tb_2" runat="server"></asp:TextBox>
			<asp:Button ID="btn_2" runat="server" Text="添加内容至列表框" OnClick="btn_2_Click" />
			<br />
			<asp:ListBox ID="lb_1" runat="server" Rows="5" Width="200px"></asp:ListBox>
			<hr />
			<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Start5_3.aspx">跳转到Start5_3</asp:LinkButton>
		</div>

	</form>
</body>
</html>
