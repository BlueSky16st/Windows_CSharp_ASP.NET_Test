<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start3.aspx.cs" Inherits="Chap07.Start3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="课程名" DataValueField="ID" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
			<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:mydbConnectionString %>' ProviderName='<%$ ConnectionStrings:mydbConnectionString.ProviderName %>' SelectCommand="SELECT [ID], [课程名] FROM [课程信息]"></asp:SqlDataSource>
		
			<br />

			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tb_id" DataSourceID="SqlDataSource2">
				<Columns>
					<asp:BoundField DataField="tb_id" HeaderText="tb_id" ReadOnly="True" InsertVisible="False" SortExpression="tb_id"></asp:BoundField>
					<asp:BoundField DataField="tb_Name" HeaderText="tb_Name" SortExpression="tb_Name"></asp:BoundField>
					<asp:BoundField DataField="tb_Age" HeaderText="tb_Age" SortExpression="tb_Age" />
					<asp:BoundField DataField="tb_ClassID" HeaderText="tb_ClassID" SortExpression="tb_ClassID" />
					<asp:BoundField DataField="tb_SelectDate" HeaderText="tb_SelectDate" SortExpression="tb_SelectDate"></asp:BoundField>
					<asp:BoundField DataField="tb_Remark" HeaderText="tb_Remark" SortExpression="tb_Remark" />
					<asp:CheckBoxField DataField="tb_Enable" HeaderText="tb_Enable" SortExpression="tb_Enable"></asp:CheckBoxField>
					<asp:BoundField DataField="tb_Order" HeaderText="tb_Order" SortExpression="tb_Order"></asp:BoundField>
				</Columns>
			</asp:GridView>

			<asp:SqlDataSource runat="server" ID="SqlDataSource2" 
				ConnectionString='<%$ ConnectionStrings:mydbConnectionString %>' 
				ProviderName='<%$ ConnectionStrings:mydbConnectionString.ProviderName %>' 
				SelectCommand="SELECT * FROM [学生选修信息] WHERE ([tb_ClassID] = ?)">
				<SelectParameters>
					<asp:SessionParameter DefaultValue="1" Name="tb_ClassID" SessionField="CID" Type="Int32" />
				</SelectParameters>
			</asp:SqlDataSource>
		</div>
	</form>
</body>
</html>
