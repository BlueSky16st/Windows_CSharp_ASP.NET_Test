<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start3.aspx.cs" Inherits="Chap03.Start3" %>

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

		.style1 {
			border: 1px solid red;
		}

		.style1 li {
			font-size: 16px;
			padding: 5px;
			border-bottom: 1px dotted gray;
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

		<div class="T">
			<div id="div_ch" runat="server">
				<asp:CheckBox ID="CheckBox1" Text="1" runat="server" />
				<asp:CheckBox ID="CheckBox3" Text="2" runat="server" />
				<asp:CheckBox ID="CheckBox4" Text="3" runat="server" />
				<asp:CheckBox ID="CheckBox2" Text="4" runat="server" />
				<asp:CheckBox ID="CheckBox5" Text="5" runat="server" />
				<asp:CheckBox ID="CheckBox6" Text="6" runat="server" />
				<asp:CheckBox ID="CheckBox7" Text="7" runat="server" />
				<asp:CheckBox ID="CheckBox8" Text="8" runat="server" />
				<asp:CheckBox ID="CheckBox9" Text="9" runat="server" />
				<asp:CheckBox ID="CheckBox10" Text="10" runat="server" />
				<asp:CheckBox ID="CheckBox11" Text="11" runat="server" />
				<asp:CheckBox ID="CheckBox12" Text="12" runat="server" />
				<br />
				<asp:Button ID="btn_submit3" runat="server" Text="获取选择的值" OnClick="btn_submit3_Click" />
				<asp:TextBox ID="txt_result2" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
			</div>
		</div>

		<div class="T">
			<asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink" DataSourceID="SqlDataSource1" DataTextField="网站名称" DataValueField="网站" BulletStyle="Disc" CssClass="style1">
				<asp:ListItem Value="https://www.baidu.com/">百度</asp:ListItem>
				<asp:ListItem>第二项</asp:ListItem>
				<asp:ListItem>第三项</asp:ListItem>
				<asp:ListItem>第四项</asp:ListItem>
			</asp:BulletedList>
			<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Software\Programming\ProgramProject\Git\Windows_CSharp_ASP.NET_Test\Learn_ASP.NET\Chap03\TestDatabase.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [网站名称], [网站] FROM [网站]"></asp:SqlDataSource>
		</div>

	</form>
</body>
</html>
