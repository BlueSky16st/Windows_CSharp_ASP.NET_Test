<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start2.aspx.cs" Inherits="Chap03.Start2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	
	<style type="text/css">
		
		.T {
			border:3px solid black;
			margin:6px;
			padding:8px;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div class="T">
			<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
			<br /><br />
			<asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
		</div>

		<div class="T">
			<p>输入姓名密码(123456)，按Enter确定</p>
			<asp:Label ID="lab_name" runat="server" Text="姓名："></asp:Label>
			<asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
			<br />
			<asp:Label ID="lab_pwd" runat="server" Text="密码："></asp:Label>
			<asp:TextBox ID="txt_pwd" runat="server" AutoPostBack="True" OnTextChanged="txt_pwd_TextChanged"></asp:TextBox>
			<br /><br />
			<asp:Panel ID="Panel1" runat="server" Enabled="False" BorderColor="#3333FF" BorderStyle="Solid" BorderWidth="2px">
				<asp:TextBox ID="txt_org" runat="server"></asp:TextBox>
				<asp:Button ID="btn_submit" runat="server" Text="拆分字符串" OnClick="btn_submit_Click" />
				<br />
				<asp:TextBox ID="txt_result" Rows="8" Columns="10" runat="server" TextMode="MultiLine"></asp:TextBox>
			</asp:Panel>
		</div>

	</form>
</body>
</html>
