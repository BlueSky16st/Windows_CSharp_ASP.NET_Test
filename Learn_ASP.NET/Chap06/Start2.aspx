<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start2.aspx.cs" Inherits="Chap06.Start2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">

		table {
			border: 1px solid black;
			border-collapse: collapse;
		}

		td {
			border: 1px solid gray;
			width: 40px;
			height: 40px;
		}

		td.bgColor {
			background-color: black;
		}

		.queen {
			background-image: url(imgs/queen.png);
			background-repeat: no-repeat;
			background-position: center;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:Button ID="Button1" runat="server" Text="生成表格" OnClick="Button1_Click" />
			<br /><br />
			<asp:PlaceHolder ID="holder_table" runat="server"></asp:PlaceHolder>
		</div>
	</form>
</body>
</html>
