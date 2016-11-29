<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start4.aspx.cs" Inherits="Chap02.Start4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<style type="text/css">

		.T {
			border:1px solid black;
			margin:4px;
			padding:6px;
		}

	</style>
</head>
<body>
	<form id="form1" runat="server">
		<div class="T">
			<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
		</div>

		<div class="T">
			<asp:TextBox ID="txt_fen" runat="server"></asp:TextBox>
			<br /><br />
			<asp:Button ID="btn_submit" runat="server" Text="确定" OnClick="btn_submit_Click"/>
			<br /><br />
			<asp:Label ID="lab_result" runat="server" Text=""></asp:Label>
		</div>

		<div class="T">
			<asp:TextBox ID="txt_fen2" runat="server"></asp:TextBox>
			<br /><br />
			<asp:Button ID="btn_submit2" runat="server" Text="确定" OnClick="btn_submit2_Click" />
			<br /><br />
			<asp:Label ID="lab_result2" runat="server" Text=""></asp:Label>
		</div>

		<div class="T">
			<asp:Label ID="lab_start" runat="server" Text="起始："></asp:Label>
			<asp:TextBox ID="txt_start" runat="server"></asp:TextBox>
			<br />
			<asp:Label ID="lab_end" runat="server" Text="结束："></asp:Label>
			<asp:TextBox ID="txt_end" runat="server"></asp:TextBox>
			<br /><br />
			<asp:Button ID="btn_submit3" runat="server" Text="计算求和" OnClick="btn_submit3_Click" />
			<br /><br />
			<asp:Label ID="lab_sum" runat="server" Text=""></asp:Label>
		</div>

		<div class="T">
			<asp:Label ID="lab_num" runat="server" Text="输入1-200的数字："></asp:Label>
			<asp:TextBox ID="txt_num" runat="server"></asp:TextBox>
			<br /><br />
			<asp:Button ID="btn_submit4" runat="server" Text="求约数" OnClick="btn_submit4_Click" />
			<br /><br />
			<asp:Label ID="lab_result3" runat="server" Text=""></asp:Label>
		</div>

		<div class="T">
			<asp:Label ID="bal_num2" runat="server" Text="输入数字："></asp:Label>
			<asp:TextBox ID="txt_num2" runat="server"></asp:TextBox>
			<br /><br />
			<asp:Button ID="btn_submit5" runat="server" Text="是否是质数" OnClick="btn_submit5_Click" />
			<br /><br />
			<asp:Label ID="lab_result4" runat="server" Text=""></asp:Label>
		</div>

		<div class="T">
			<asp:Button ID="btn_submit6" runat="server" Text="计算水仙花数" OnClick="btn_submit6_Click" />
			<br /><br />
			<asp:Label ID="lab_result5" runat="server" Text=""></asp:Label>
		</div>

		<div class="T">
			<asp:Button ID="btn_submit7" runat="server" Text="韩信点兵问题" OnClick="btn_submit7_Click"/>
			<br /><br />
			<asp:Label ID="lab_result6" runat="server" Text=""></asp:Label>
		</div>

		<div class="T">
			<asp:Label ID="lab_start2" runat="server" Text="起始"></asp:Label>
			<asp:TextBox ID="txt_start2" runat="server"></asp:TextBox>
			<br />
			<asp:Label ID="lab_end2" runat="server" Text="结束"></asp:Label>
			<asp:TextBox ID="txt_end2" runat="server"></asp:TextBox>
			<br /><br />
			<asp:Button ID="btn_submit8" runat="server" Text="列出质数" OnClick="btn_submit8_Click" />
			<br /><br />
			<asp:Label ID="lab_result7" runat="server" Text=""></asp:Label>
		</div>

		<div class="T">
			<asp:Button ID="btn_submit9" runat="server" Text="Case语句" OnClick="btn_submit9_Click" />
		</div>

	</form>
</body>
</html>
