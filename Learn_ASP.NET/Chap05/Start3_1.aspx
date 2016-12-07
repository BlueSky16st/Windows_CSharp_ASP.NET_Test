<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start3_1.aspx.cs" Inherits="Chap05.Start3_1" %>

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
			<asp:Button ID="btn_1" runat="server" Text="设置cookie：ck_person" OnClick="btn_1_Click" />
			<hr />
			<asp:Button ID="btn_2" runat="server" Text="删除cookie：ck_person" OnClick="btn_2_Click" />
			<hr />
			<asp:Button ID="btn_3" runat="server" Text="设置多值cookie" OnClick="btn_3_Click" />
			<hr />
			<asp:TextBox ID="tb_1" runat="server"></asp:TextBox>
			<asp:Button ID="btn_4" runat="server" Text="修改子键name的值" OnClick="btn_4_Click" />
			<hr />
			<asp:Button ID="btn_5" runat="server" Text="删除age子键" OnClick="btn_5_Click" />
			<hr />
			<asp:Button ID="btn_6" runat="server" Text="删除全部子键" OnClick="btn_6_Click" />
			<hr />
			选择字体颜色：
			<asp:DropDownList ID="ddl_1" runat="server">
				<asp:ListItem Text="绿色" Value="green"></asp:ListItem>
				<asp:ListItem Text="红色" Value="red"></asp:ListItem>
				<asp:ListItem Text="蓝色" Value="blue"></asp:ListItem>
			</asp:DropDownList>
			<br />
			选择字体大小：
			<asp:DropDownList ID="ddl_2" runat="server">
				<asp:ListItem Text="12px" Value="12px"></asp:ListItem>
				<asp:ListItem Text="14px" Value="14px"></asp:ListItem>
				<asp:ListItem Text="16px" Value="16px"></asp:ListItem>
				<asp:ListItem Text="18px" Value="18px"></asp:ListItem>
				<asp:ListItem Text="20px" Value="20px"></asp:ListItem>
				<asp:ListItem Text="22px" Value="22px"></asp:ListItem>
				<asp:ListItem Text="24px" Value="24px"></asp:ListItem>
			</asp:DropDownList>
			<br />
			<asp:Button ID="btn_7" runat="server" Text="设置字体Cookie" OnClick="btn_7_Click" />

		</div>

		<div class="T">
			<asp:Button Text="跳转到读取页面" runat="server" PostBackUrl="~/Start3_2.aspx" />
		</div>

	</form>
</body>
</html>
