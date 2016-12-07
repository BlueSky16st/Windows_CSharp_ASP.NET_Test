<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start10_2.aspx.cs" Inherits="Chap05.Start10_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">

		.panel1 {
			border: 1px solid #DEDEDE;
			margin: auto;
			padding: 5px;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server" defaultbutton="btn_1" defaultfocus="tb_1">
		<div>
			<iframe src="Start10_3.aspx" width="90%" height="300px" class="panel1"></iframe>
			<asp:Panel ID="pnl_ctl" runat="server" Width="90%" CssClass="panel1">
				<asp:TextBox ID="tb_1" runat="server" Width="200px"></asp:TextBox>
				<asp:Button ID="btn_1" runat="server" Text="发送" OnClick="btn_1_Click" />
				<asp:Button ID="btn_2" runat="server" Text="退出" OnClick="btn_2_Click" />
				<asp:DropDownList ID="ddl_color" runat="server">
					<asp:ListItem Value="black">默认</asp:ListItem>
					<asp:ListItem Value="red">红色</asp:ListItem>
					<asp:ListItem Value="green">绿色</asp:ListItem>
				</asp:DropDownList>
			</asp:Panel>
		</div>
	</form>
</body>
</html>
