<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start1.aspx.cs" Inherits="Chap03.Start1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">
		
		.T {
			border:3px solid black;
			margin:6px;
			padding:8px;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div class="T">
			<asp:Button ID="Button1" runat="server" Text="ASP的TextBox(TextBox.Text)" OnClick="Button1_Click" />
			<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			<br /><br />
			<asp:Button ID="Button2" runat="server" Text="HTML的TextBox(TextBox.Value)" OnClick="Button2_Click" />
			<input id="TextBox2" type="text" runat="server" />
		</div>

		<div class="T">
			<asp:TextBox ID="txt1" runat="server"></asp:TextBox>
			<asp:Button ID="Button3" runat="server" Text="单行文本框，读取并显示内容" OnClick="Button3_Click" />
			<hr />
			<asp:TextBox ID="txt2" runat="server" TextMode="MultiLine" Rows="5" Columns="18"></asp:TextBox>
			<asp:Button ID="Button4" runat="server" Text="多行文本框，读取并显示内容" OnClick="Button4_Click" />
			<hr />
			<asp:TextBox ID="txt3" runat="server" TextMode="Password"></asp:TextBox>
			<asp:Button ID="Button5" runat="server" Text="密码文本框，读取并显示内容" OnClick="Button5_Click" />
			<hr />
			<input id="txt4" type="text" runat="server" />
			<asp:Button ID="Button6" runat="server" Text="HTML文本框，读取并显示内容" OnClick="Button6_Click" />
			<hr />
			<div id="div_result" runat="server"></div>
		</div>

	</form>
</body>
</html>
