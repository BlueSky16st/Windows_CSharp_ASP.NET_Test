<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start9.aspx.cs" Inherits="Chap05.Start9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Button ID="btn_1" runat="server" Text="点击count+1" OnClick="btn_1_Click" />
			<asp:Button ID="btn_2" runat="server" Text="清空当前计数" OnClick="btn_2_Click" />
			<asp:Button ID="btn_3" runat="server" Text="点击查看当前计数" OnClick="btn_3_Click" />
		</div>
	</form>
</body>
</html>
