<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start7_1.aspx.cs" Inherits="Chap05.Start7_1" %>

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
			保存文本框的值：
			<asp:TextBox ID="tb_1" runat="server"></asp:TextBox>
			<asp:Button ID="btn_1" runat="server" Text="保存到Session['s_txt']" OnClick="btn_1_Click" />
		</div>

		<div class="T">
			拆分由","分隔的数组：
			<asp:TextBox ID="tb_2" runat="server"></asp:TextBox>
			<asp:Button ID="btn_2" runat="server" Text="保存到session['s_sarr']" OnClick="btn_2_Click" />
		</div>

		<div class="T">
			保存日历控件：
			<asp:Calendar ID="cal_1" runat="server"></asp:Calendar>
			<asp:Button ID="btn_3" runat="server" Text="保存到session['s_cal']" OnClick="btn_3_Click" />
		</div>

		<div class="T">
			使用Session.Add方法添加一个key：
			<asp:Button ID="btn_4" runat="server" Text="重新添加session['s_txt']" OnClick="btn_4_Click"/>
		</div>

		<div class="T">
			<asp:Button ID="Button1" runat="server" Text="跳转到Start7_2.aspx" PostBackUrl="~/Start7_2.aspx" />
		</div>

	</form>
</body>
</html>
