<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start5.aspx.cs" Inherits="Chap07.Start5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">

		#GridView1 th {
			padding: 10px;
			color: goldenrod;
			font-size: 16px;
		}

		#GridView1 td {
			padding: 10px;
			color: seagreen;
			font-size: 12px;
		}

		#GridView1 td.StylePurple {
			color: mediumpurple;
		}

		#GridView1 tr:hover {
			background-color: #DEDEDE;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
				<Columns>
					<asp:BoundField DataField="tb_id" HeaderText="学号" InsertVisible="False" SortExpression="tb_id"></asp:BoundField>
					<asp:BoundField DataField="tb_Name" HeaderText="姓名" SortExpression="tb_Name">
						<ItemStyle CssClass="StylePurple"></ItemStyle>
					</asp:BoundField>
					<asp:BoundField DataField="tb_Age" HeaderText="年龄" SortExpression="tb_Age"></asp:BoundField>
					<asp:BoundField DataField="tb_SelectDate" HeaderText="选修时间" SortExpression="tb_SelectDate" DataFormatString="{0:yyyy/MM/dd dddd}"></asp:BoundField>
					<asp:CheckBoxField DataField="tb_Enable" HeaderText="有效性" SortExpression="tb_Enable"></asp:CheckBoxField>
					<asp:BoundField DataField="tb_Order" HeaderText="排序" SortExpression="tb_Order" DataFormatString="${0:n4}"></asp:BoundField>
					<asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名"></asp:BoundField>
					<asp:ImageField HeaderText="配图" DataImageUrlField="tb_picsrc" DataImageUrlFormatString="imgs/{0}"></asp:ImageField>
					<asp:HyperLinkField DataNavigateUrlFields="tb_Name,tb_id" DataNavigateUrlFormatString="Start5_2.aspx?id={1}" DataTextField="tb_Name" HeaderText="跳转" DataTextFormatString="跳转"></asp:HyperLinkField>
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:mydbConnectionString %>' ProviderName='<%$ ConnectionStrings:mydbConnectionString.ProviderName %>' SelectCommand="SELECT * FROM (学生选修信息 INNER JOIN 课程信息 ON 学生选修信息.tb_ClassID = 课程信息.ID)"></asp:SqlDataSource>
		</div>
	</form>
</body>
</html>
