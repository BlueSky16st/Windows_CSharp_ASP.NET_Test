<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start6.aspx.cs" Inherits="Chap07.Start6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>

			<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" ItemPlaceholderID="holder">
				<LayoutTemplate>
					<p>123</p>
					<p runat="server" id="holder"></p>
					<p>ABC</p>
				</LayoutTemplate>
				<ItemTemplate>
					<p>
						<%#Eval("tb_Name") %>
						<%#Eval("tb_SelectDate", "{0:yyyy-MM-dd}") %>
						<asp:CheckBox ID="CheckBox1" runat="server" Checked='<%#Eval("tb_Enable") %>' Enabled="false" />
					</p>
				</ItemTemplate>
			</asp:ListView>

			<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:mydbConnectionString %>' ProviderName='<%$ ConnectionStrings:mydbConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [学生选修信息]"></asp:SqlDataSource>
		</div>
	</form>
</body>
</html>
