<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start10_1.aspx.cs" Inherits="Chap05.Start10_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<script type="text/javascript">

		function checkUID()
		{
			var uid = document.getElementById("txt_uid");
			if(uid == "")
			{
				alert("请输入用户名");
				return false;
			}
			return true;

		}

	</script>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			用户名：<asp:TextBox ID="txt_uid" runat="server"></asp:TextBox>
			<br />
			<asp:Button ID="btn_login" runat="server" Text="登录" OnClientClick="return checkUID()" OnClick="btn_login_Click" />
		</div>
	</form>
</body>
</html>
