<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start4.aspx.cs" Inherits="Chap03.Start4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>

	<style type="text/css">

		.T {
			border: 3px solid black;
			margin: 6px;
			padding: 8px;
		}

		.style1 li {
			display: inline-block;
			width: 100px;
			padding: 5px;
		}

		.style2 li {
			padding: 15px;
			list-style-type: decimal-leading-zero;
		}

		.style3 li {
			padding: 45px 0px 0px 45px;
			color: gray;
			cursor: pointer;
		}

		.style4 {
			background-color: pink;
			margin: 0px;
			padding: 0px;
			border-bottom: 1px solid #808080;
			border-top: 1px solid #808080;
		}

		.style4 li {
			border-right: 1px solid #DDDDDD;
			padding:15px 30px;
			display: inline-block;
		}

		.style4 a {
			color: #666666;
			text-decoration: none;
		}
		.style4 a:hover {
			color: red;
		}

	</style>

</head>
<body>
	<form id="form1" runat="server">
		<div class="T">
			<asp:RadioButton ID="RadioButton1" GroupName="Ra" Text="竖向排列" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
			<asp:RadioButton ID="RadioButton2" GroupName="Ra" Text="横向排列" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" />
			<asp:RadioButton ID="RadioButton3" GroupName="Ra" Text="带链接竖向排列" runat="server" AutoPostBack="True" OnCheckedChanged="RadioButton3_CheckedChanged" />
			<br />
			<asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="网站名称" DataValueField="网站"></asp:BulletedList>
			<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TestDatabaseConnectionString2 %>' ProviderName='<%$ ConnectionStrings:TestDatabaseConnectionString2.ProviderName %>' SelectCommand="SELECT [网站名称], [网站] FROM [网站]"></asp:SqlDataSource>
		</div>

		<div class="T">
			<asp:BulletedList ID="BulletedList2" CssClass="style4" runat="server" DataSourceID="SqlDataSource1" DataTextField="网站名称" DataValueField="网站" DisplayMode="HyperLink"></asp:BulletedList>
		</div>

		<div class="T">
			<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
				<asp:ListItem Value="aaa">111</asp:ListItem>
				<asp:ListItem Value="bbb">222</asp:ListItem>
				<asp:ListItem Value="ccc">333</asp:ListItem>
			</asp:DropDownList>
			<asp:TextBox ID="txt_1" runat="server"></asp:TextBox>
			<br />
			<asp:Button ID="btn_1" runat="server" Text="选择第三项" OnClick="btn_1_Click" />
			<asp:Button ID="btn_2" runat="server" Text="清除所有项" OnClick="btn_2_Click" />
		</div>

		<div class="T">
			<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="网站名称" DataValueField="网站"></asp:DropDownList>
			<asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Git_Project\Windows_CSharp_ASP.NET_Test\Learn_ASP.NET\Chap03\TestDatabase.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [网站名称], [网站] FROM [网站]"></asp:SqlDataSource>
			<asp:Button ID="btn_3" runat="server" Text="转到" OnClick="btn_3_Click" />
			<br />
			<asp:Button ID="btn_4" runat="server" Text="更改第1项的内容" OnClick="btn_4_Click" />
			<asp:Button ID="btn_5" runat="server" Text="添加一个新项" OnClick="btn_5_Click" />
			<asp:Button ID="btn_6" runat="server" Text="创建一个新的下拉列表" OnClick="btn_6_Click" />
			<asp:Panel ID="Panel1" runat="server">

			</asp:Panel>
		</div>

	</form>
</body>
</html>
