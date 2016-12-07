<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start6_1.aspx.cs" Inherits="Chap05.Start6_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			标题：<asp:TextBox ID="tital" runat="server"></asp:TextBox>
			<hr />
			选择日期：
			<br />
			<asp:Calendar ID="cal" runat="server"></asp:Calendar>
			<hr />
			选择成员：
			<br />
			<asp:ListBox ID="member" runat="server" SelectionMode="Multiple">
				<asp:ListItem>人员一</asp:ListItem>
				<asp:ListItem>人员二</asp:ListItem>
				<asp:ListItem>人员三</asp:ListItem>
				<asp:ListItem>人员四</asp:ListItem>
			</asp:ListBox>
			<hr />
			<asp:Button ID="btn_1" runat="server" Text="提交" PostBackUrl="~/Start6_2.aspx" />
		</div>
	</form>
</body>
</html>
