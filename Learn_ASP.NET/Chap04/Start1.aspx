<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start1.aspx.cs" Inherits="Chap04.Start1" %>

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
			Label控件，当前时间：<asp:Label ID="lb_1" Text="" runat="server" />
		</div>
		
		<div class="T">
			控制CheckBox控件为选中状态：
			<asp:CheckBox ID="cb_1" Text="自动选中" runat="server" />
			<asp:CheckBox ID="cb_2" Text="非自动选中" runat="server" />
		</div>

		<div class="T">
			设置DropDownList控件，第二项为默认选中状态：
			<asp:DropDownList ID="ddl_1" runat="server">
				<asp:ListItem Text="C++" Value="C++" />
				<asp:ListItem Text="C" Value="C" />
				<asp:ListItem Text="C#" Value="C#" />
				<asp:ListItem Text="CX" Value="CX" />
			</asp:DropDownList>
		</div>

		<div class="T">
			设置文本框：第一个为password，第二个为不可用，第三个内容为空
			<br />
			<asp:TextBox ID="tb_1" Text="第一个文本框" runat="server" />
			<asp:TextBox ID="tb_2" Text="第二个文本框" runat="server" />
			<asp:TextBox ID="tb_3" Text="第三个文本框" runat="server" />
		</div>

		<div class="T">
			获取第三个文本框的内容并拆分
			<br />
			<asp:Button ID="btn_1" Text="获取内容并拆分" runat="server" OnClick="btn_1_Click" />
			<asp:TextBox ID="tb_4" Width="100px" runat="server" />
		</div>

		<div class="T">
			输入姓名：<asp:TextBox ID="tb_5" runat="server" />
			<hr />
			选择性别：
			<asp:RadioButtonList ID="rbl_1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
				<asp:ListItem Text="男" />
				<asp:ListItem Text="女" />
			</asp:RadioButtonList>
			<hr />
			选择班级：
			<asp:ListBox ID="lb_2" runat="server" Rows="1">
				<asp:ListItem Text="一班" />
				<asp:ListItem Text="二班" />
				<asp:ListItem Text="三班" />
			</asp:ListBox>
			<hr />
			<asp:Button ID="btn_2" Text="确定" runat="server" OnClick="btn_2_Click" />
			<hr />
			显示结果：<asp:TextBox ID="tb_6" Width="200px" runat="server" />
		</div>

	</form>
</body>
</html>
