<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start4_1.aspx.cs" Inherits="Chap07.Start4_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="课程名" DataValueField="ID" DisplayMode="LinkButton" OnClick="BulletedList1_Click"></asp:BulletedList>
			<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:mydbConnectionString %>' ProviderName='<%$ ConnectionStrings:mydbConnectionString.ProviderName %>' SelectCommand="SELECT [ID], [课程名] FROM [课程信息]"></asp:SqlDataSource>
		</div>
	</form>
</body>
</html>
