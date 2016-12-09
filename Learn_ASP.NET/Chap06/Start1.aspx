<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start1.aspx.cs" Inherits="Chap06.Start1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">
		
		#div_head, #div_foot {
			border: 1px solid gray;
			height: 30px;
		}

		#div_left {
			float: left;
			border: 1px solid black;
			width: 220px;
			height: 400px;
		}

		#div_right_1 {
			float: right;
			border: 1px solid blue;
			width: 500px;
			height: 80px;
			padding: 5px;
			margin: 5px 0px;
		}

		#div_right_1_left {
			float: left;
			border: 1px solid green;
			width: 42%;
			height: 100%;
		}

		#div_right_1_right {
			float: right;
			border: 1px solid green;
			width: 54%;
			height: 100%;
		}

		#div_right_2 {
			float: right;
			border: 1px solid blue;
			width: 500px;
			height: 110px;
			padding: 5px;
			margin: 5px 0px;
		}
		
		#div_right_2_left {
			float: left;
			border: 1px solid green;
			width: 22%;
			height: 100%;
		}

		#div_right_2_right {
			float: right;
			border: 1px solid green;
			width: 74%;
			height: 100%;
		}

		#div_right_3 {
			float: right;
			border: 1px solid blue;
			width: 500px;
			height: 180px;
			padding: 5px;
			margin: 5px 0px;
		}
		
		#div_right_3_left {
			float: left;
			border: 1px solid green;
			width: 62%;
			height: 100%;
		}

		#div_right_3_right {
			float: right;
			border: 1px solid green;
			width: 34%;
			height: 100%;
		}

		.clr {
			clear: both;
		}

	</style>
	
</head>
<body>
	<form id="form1" runat="server">
		<div style="width:750px;">
			<div id="div_head"></div>
			<div id="div_main">
				<div id="div_left">LEFT</div>
				<div id="div_right_1">
					<div id="div_right_1_left"></div>
					<div id="div_right_1_right"></div>
				</div>
				<div id="div_right_2">
					<div id="div_right_2_left"></div>
					<div id="div_right_2_right"></div>
				</div>
				<div id="div_right_3">
					<div id="div_right_3_left"></div>
					<div id="div_right_3_right"></div>
				</div>
				<div class="clr"></div>
			</div>
			<div id="div_foot"></div>
		</div>
	</form>
</body>
</html>
