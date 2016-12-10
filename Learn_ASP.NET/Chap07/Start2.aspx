<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start2.aspx.cs" Inherits="Chap07.Start2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
				<Columns>
					<asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"></asp:BoundField>
					<asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名"></asp:BoundField>
					<asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分"></asp:BoundField>
					<asp:CheckBoxField DataField="是否主科" HeaderText="是否主科" SortExpression="是否主科"></asp:CheckBoxField>
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:mydbConnectionString %>' ProviderName='<%$ ConnectionStrings:mydbConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [课程信息] WHERE ([ID] = ?)">
				<SelectParameters>
					<asp:QueryStringParameter QueryStringField="id" DefaultValue="1" Name="ID" Type="Int32"></asp:QueryStringParameter>
				</SelectParameters>
			</asp:SqlDataSource>

			<br />
			<asp:Button ID="btn_1" runat="server" Text="查找学分<70的记录" OnClick="btn_1_Click" />

		</div>
	</form>
</body>
</html>
