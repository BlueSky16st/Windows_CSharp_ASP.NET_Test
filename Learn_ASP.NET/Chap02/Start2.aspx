<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start2.aspx.cs" Inherits="Chap02.Start2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			名字：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			<br />
			年龄：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			<br />
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
			<br />
			<br />
			<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

			<hr />

			你家几只鸡：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
			<br />
			我家几只鸡：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
			<br />
			<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
			<br />
			<br />
			<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

		</div>
	</form>
</body>
</html>
