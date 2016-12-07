<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start3_2.aspx.cs" Inherits="Chap05.Start3_2" %>

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
			<asp:Button ID="btn_1" runat="server" Text="读取ck_person" OnClick="btn_1_Click" />
			<hr />
			<asp:Button ID="btn_2" runat="server" Text="读取多值cookie" OnClick="btn_2_Click" />
			<asp:TextBox ID="tb_1" runat="server"></asp:TextBox>
			<hr />
			<asp:Button ID="btn_3" runat="server" Text="读取字体cookie" OnClick="btn_3_Click" />
			<asp:Label ID="lb_1" runat="server" Text="文本"></asp:Label>
			<hr />
			<asp:Button ID="btn_4" runat="server" Text="遍历所有cookie" OnClick="btn_4_Click" />
			<br />
			<asp:TextBox ID="tb_2" TextMode="MultiLine" Rows="15" Width="300px" runat="server"></asp:TextBox>
			<hr />
			<asp:Button ID="btn_5" runat="server" Text="清除所有cookie" OnClick="btn_5_Click" />
		</div>

		<div class="T">
			<asp:Button Text="跳转到设置页面" runat="server" PostBackUrl="~/Start3_1.aspx" />
		</div>

	</form>
</body>
</html>
