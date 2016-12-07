<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start2_2.aspx.cs" Inherits="Chap05.Start2_2" %>

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
			接收id值：<asp:Label ID="lb_1" runat="server" />
			<hr />
			接收name值：<asp:Label ID="lb_2" runat="server" />
			<hr />
			接收chk值：<asp:Label ID="lb_3" runat="server" />
			<hr />
			接收soft、website值：<asp:Label ID="lb_4" runat="server" />
		</div>


	</form>
</body>
</html>
