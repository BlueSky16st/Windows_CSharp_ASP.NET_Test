<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start7_2.aspx.cs" Inherits="Chap05.Start7_2" %>

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
			文本框的值：<asp:TextBox ID="tb_1" runat="server"></asp:TextBox>
			<br />
			数组：<asp:TextBox ID="tb_2" runat="server"></asp:TextBox>
			<br />
			控件：
			<asp:Panel ID="pal_1" runat="server"></asp:Panel>
		</div>

		<div class="T">
			遍历session，获取值和对象类型：<asp:Label ID="lb_1" runat="server"></asp:Label>
			<br />
			获取sessionID：<asp:Label ID="lb_2" runat="server"></asp:Label>
			<br />
			获取session过期时间：<asp:Label ID="lb_3" runat="server"></asp:Label>
		</div>

		<div class="T">
			<asp:Button ID="btn_1" runat="server" Text="清除所有session" OnClick="btn_1_Click" />
			<asp:Button ID="btn_2" runat="server" Text="删除session['s_txt']" OnClick="btn_2_Click" />
		</div>

		<div class="T">
			<asp:Button ID="btn_3" runat="server" Text="跳转到Start7_1.aspx" PostBackUrl="~/Start7_1.aspx" />
		</div>

	</form>
</body>
</html>
