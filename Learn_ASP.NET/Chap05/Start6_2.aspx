<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start6_2.aspx.cs" Inherits="Chap05.Start6_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Label ID="lab_tital" runat="server" Text="Label"></asp:Label>
			<br />
			<asp:Label ID="lab_cal" runat="server" Text="Label"></asp:Label>
			<br />
			<asp:Label ID="lab_member" runat="server" Text="Label"></asp:Label>
			<hr />
			<asp:Button ID="btn_1" runat="server" Text="返回" PostBackUrl="~/Start6_1.aspx" />
		</div>
	</form>
</body>
</html>
