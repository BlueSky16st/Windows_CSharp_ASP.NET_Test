<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start8_1.aspx.cs" Inherits="Chap05.Start8_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<script type="text/javascript">

		function isEmpty()
		{
			var id = document.getElementById("txt_id");
			if(id.value == "")
			{
				alert("请输入ID");
				return false;
			}
			return true;

		}

	</script>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			ID：
			<asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
			<br />
			<asp:Button ID="btn_1" runat="server" Text="登录" OnClientClick="return isEmpty()" OnClick="btn_1_Click" />
		</div>
	</form>
</body>
</html>
