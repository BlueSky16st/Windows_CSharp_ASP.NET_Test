<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start2.aspx.cs" Inherits="Chap04.Start2" %>

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
			拥有TextChanged事件的TextBox：<asp:TextBox ID="tb_1" runat="server" OnTextChanged="tb_1_TextChanged" />
			<hr />
			拥有SelectedIndexChanged事件的DropDownList：
			<asp:DropDownList ID="ddl_1" runat="server" OnSelectedIndexChanged="ddl_1_SelectedIndexChanged" >
				<asp:ListItem Text="C++" />
				<asp:ListItem Text="C" />
				<asp:ListItem Text="C#" />
			</asp:DropDownList>
			<hr />
			拥有Click事件的Button：<asp:Button ID="btn_1" Text="提交" runat="server" OnClick="btn_1_Click" />
			<hr />
			事件处理顺序：<asp:TextBox ID="tb_2" TextMode="MultiLine" Rows="6" Width="250px" runat="server" />
		</div>


	</form>
</body>
</html>
