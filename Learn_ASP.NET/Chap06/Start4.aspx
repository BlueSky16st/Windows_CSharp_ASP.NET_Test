<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start4.aspx.cs" Inherits="Chap06.Start4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">

		#txt_holder input {
			display: block;
			width: 300px;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:DropDownList ID="ddl_file" runat="server"></asp:DropDownList>
			<asp:Button ID="btn_1" runat="server" Text="读取文件" OnClick="btn_1_Click" />
			<asp:Button ID="btn_2" runat="server" Text="读取行" OnClick="btn_2_Click1" />
			<br />
			<asp:TextBox ID="tb_1" TextMode="MultiLine" Rows="12" Width="400px" runat="server"></asp:TextBox>
			<br />
			<asp:Button ID="btn_3" runat="server" Text="保存文件" OnClick="btn_3_Click" />
			<br />
			<asp:Panel ID="txt_holder" runat="server"></asp:Panel>
		</div>
	</form>
</body>
</html>
