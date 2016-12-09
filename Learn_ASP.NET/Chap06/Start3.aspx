<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start3.aspx.cs" Inherits="Chap06.Start3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">

		#div_left {
			float: left;
			width: 200px;
		}

		#div_right {
			float: right;
			width: 490px;
			margin: 0px auto;
		}

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
		<div style="width:700px; margin:0px auto;">
			<h2 style="text-align: center; border-bottom: 1px solid gray; padding: 10px">
				八皇后问题
			</h2>
			<div id="div_left">
				<asp:Button ID="Button1" runat="server" Text="计算" OnClick="Button1_Click" />
				<br />
				<asp:ListBox ID="result" Width="200px" Height="250px" runat="server" OnSelectedIndexChanged="result_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
			</div>
			<div id="div_right" runat="server">

			</div>
		</div>
	</form>
</body>
</html>
