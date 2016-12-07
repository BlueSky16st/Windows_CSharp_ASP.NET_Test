<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start5_2.aspx.cs" Inherits="Chap05.Start5_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Label ID="lab_1" runat="server"></asp:Label>
			<hr />
			文本框的值：<asp:Label ID="lab_2" runat="server"></asp:Label>
			<hr />
			标签的值：<asp:Label ID="lab_3" runat="server"></asp:Label>
			<hr />
			<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Start5_1.aspx">跳转到Start5_1</asp:LinkButton>
		</div>
	</form>
</body>
</html>
