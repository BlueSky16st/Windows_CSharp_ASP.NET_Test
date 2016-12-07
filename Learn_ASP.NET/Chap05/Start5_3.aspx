<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start5_3.aspx.cs" Inherits="Chap05.Start5_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			获取列表框所有的项：
			<asp:TextBox ID="tb_1" TextMode="MultiLine" Rows="6" Width="200px" runat="server"></asp:TextBox>
			<hr />
			<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Start5_1.aspx">跳转到Start5_1</asp:LinkButton>
		</div>
	</form>
</body>
</html>
