<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start7.aspx.cs" Inherits="Chap07.Start7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">

		body, div, p, img, h1, h2, h3, h4, h5 {
			margin: 0px;
			padding: 0px;
		}

		body {
			width: 760px;
		}

		h1 {
			padding: 15px;
			border-bottom: 1px solid #DEDEDE;
		}

		.fl {
			float: left;
		}

		.fr {
			float: right;
		}

		.clr {
			clear: both;
		}

		#div_listview {
			width: 550px;
		}

		#div_menu {
			width: 210px;
		}

		.divItem {
			border-bottom: 1px dashed #EDEDED;
			margin-bottom: 10px;
			padding: 10px;
		}

		.divItem:hover {
			background-color: #F0F0F0;
		}

		.divItem img {
			float: left;
			padding: 3px;
			margin-right: 10px;
			border: 1px solid #EAEAEA;
			background-color: white;
		}

		.divItem h2 {
			font-family: 微软雅黑;
			font-size: 16px;
			color: #444;
			letter-spacing: 1px;
			margin: 0px 0px 10px 0px;
		}

		.divItem p {
			font-size: 12px;
			color: #888;
			margin-bottom: 10px;
		}

		.divItem a {
			text-decoration: none;
			color: gray;
		}

		.divItem a:hover {
			color: red;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			<h1>学生选修表</h1>

			<div id="div_listview" class="fl">
				<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" ItemPlaceholderID="itemHolder">
					<LayoutTemplate>
						<div runat="server" id="itemHolder"></div>
					</LayoutTemplate>
					<ItemTemplate>
						<div class="divItem">
							<img alt="" src='<%#Eval("tb_picsrc", "imgs/{0}") %>' />
							<div class="fl">
								<h2><%#Eval("tb_Name") %></h2>
								<p><%#Eval("tb_SelectDate", "{0:D}") %></p>
								<a href='<%#Eval("tb_id", "Start7_1.aspx?nid={0}") %>'">读取详细内容</a>
							</div>

							<div class="clr"></div>
						</div>
					</ItemTemplate>
				</asp:ListView>

				<asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:mydbConnectionString %>' ProviderName='<%$ ConnectionStrings:mydbConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [学生选修信息] WHERE ([tb_ClassID] = ?)">
					<SelectParameters>
						<asp:SessionParameter SessionField="CID" DefaultValue="1" Name="tb_ClassID" Type="Int32"></asp:SessionParameter>
					</SelectParameters>
				</asp:SqlDataSource>
			</div>
			<div id="div_menu" class="fr">
				<asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="课程名" DataValueField="ID" DisplayMode="LinkButton" OnClick="BulletedList1_Click"></asp:BulletedList>
				<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:mydbConnectionString %>' ProviderName='<%$ ConnectionStrings:mydbConnectionString.ProviderName %>' SelectCommand="SELECT [ID], [课程名] FROM [课程信息]"></asp:SqlDataSource>
			</div>

			<div class="clr"></div>

		</div>
	</form>
</body>
</html>
