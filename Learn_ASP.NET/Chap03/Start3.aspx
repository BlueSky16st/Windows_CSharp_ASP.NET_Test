<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start3.aspx.cs" Inherits="Chap03.Start3" %>

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
			<asp:RadioButton ID="rbtn_1" Text="猪" runat="server" GroupName="animal" />
			<asp:RadioButton ID="rbtn_2" Text="猫" runat="server" GroupName="animal" />
			<asp:RadioButton ID="rbtn_3" Text="狗" runat="server" GroupName="animal" />
			<asp:RadioButton ID="rbtn_4" Text="羊" runat="server" GroupName="animal" />
			<br />
			<asp:TextBox ID="txt_result1" runat="server"></asp:TextBox>
			<asp:Button ID="btn_submit1" runat="server" Text="提交" OnClick="btn_submit1_Click" />
		</div>

		<div class="T">
			<asp:RadioButton ID="rbtn_5" Text="不及格" runat="server" GroupName="grade" />
			<asp:RadioButton ID="rbtn_6" Text="及格" runat="server" GroupName="grade" />
			<asp:RadioButton ID="rbtn_7" Text="良好" runat="server" GroupName="grade" />
			<asp:RadioButton ID="rbtn_8" Text="优秀" runat="server" GroupName="grade" />
			<br />
			<asp:TextBox ID="txt_num" runat="server"></asp:TextBox>
			<asp:Button ID="btn_submit2" runat="server" Text="提交" OnClick="btn_submit2_Click"/>
			<asp:Label ID="lab_1" runat="server" ForeColor="Red"></asp:Label>
		</div>

	</form>
</body>
</html>
