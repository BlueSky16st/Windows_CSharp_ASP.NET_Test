<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start4_1.aspx.cs" Inherits="Chap05.Start4_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">

		.login {
			height: 150px;
			width: 300px;
			border: 1px solid rgb(200, 200, 200);
			margin: auto;
			padding: 20px 10px;
			text-align: center;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div class="login">
			<p>输入用户名</p>
			<asp:TextBox ID="tb_1" runat="server"></asp:TextBox>
			<br /><br />
			<asp:Button ID="btn_1" runat="server" Text="登录" OnClick="btn_1_Click" />
		</div>
	</form>
</body>
</html>
