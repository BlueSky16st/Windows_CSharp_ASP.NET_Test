<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start1.aspx.cs" Inherits="Chap07.Start1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>

			<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:mydbConnectionString %>' DeleteCommand="DELETE FROM [课程信息] WHERE [ID] = ?" InsertCommand="INSERT INTO [课程信息] ([ID], [课程名], [学分], [是否主科]) VALUES (?, ?, ?, ?)" ProviderName='<%$ ConnectionStrings:mydbConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [课程信息]" UpdateCommand="UPDATE [课程信息] SET [课程名] = ?, [学分] = ?, [是否主科] = ? WHERE [ID] = ?">
				<DeleteParameters>
					<asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
				</DeleteParameters>
				<InsertParameters>
					<asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
					<asp:Parameter Name="课程名" Type="String"></asp:Parameter>
					<asp:Parameter Name="学分" Type="Int32"></asp:Parameter>
					<asp:Parameter Name="是否主科" Type="Boolean"></asp:Parameter>
				</InsertParameters>
				<UpdateParameters>
					<asp:Parameter Name="课程名" Type="String"></asp:Parameter>
					<asp:Parameter Name="学分" Type="Int32"></asp:Parameter>
					<asp:Parameter Name="是否主科" Type="Boolean"></asp:Parameter>
					<asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
				</UpdateParameters>
			</asp:SqlDataSource>

			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
				<Columns>
					<asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
					<asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"></asp:BoundField>
					<asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名"></asp:BoundField>
					<asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分"></asp:BoundField>
					<asp:CheckBoxField DataField="是否主科" HeaderText="是否主科" SortExpression="是否主科"></asp:CheckBoxField>
				</Columns>
			</asp:GridView>

			<br /><br />

			<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True">
				<Fields>
					<asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"></asp:BoundField>
					<asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名"></asp:BoundField>
					<asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分"></asp:BoundField>
					<asp:CheckBoxField DataField="是否主科" HeaderText="是否主科" SortExpression="是否主科"></asp:CheckBoxField>
					<asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
				</Fields>
			</asp:DetailsView>

			<br /><br />

			<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID" InsertItemPosition="LastItem">
				<AlternatingItemTemplate>
					<tr style="">
						<td>
							<asp:Button runat="server" CommandName="Delete" Text="删除" ID="DeleteButton" />
							<asp:Button runat="server" CommandName="Edit" Text="编辑" ID="EditButton" />
						</td>
						<td>
							<asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
						<td>
							<asp:Label Text='<%# Eval("课程名") %>' runat="server" ID="课程名Label" /></td>
						<td>
							<asp:Label Text='<%# Eval("学分") %>' runat="server" ID="学分Label" /></td>
						<td>
							<asp:CheckBox Checked='<%# Eval("是否主科") %>' runat="server" ID="是否主科CheckBox" Enabled="false" /></td>
					</tr>
				</AlternatingItemTemplate>
				<EditItemTemplate>
					<tr style="">
						<td>
							<asp:Button runat="server" CommandName="Update" Text="更新" ID="UpdateButton" />
							<asp:Button runat="server" CommandName="Cancel" Text="取消" ID="CancelButton" />
						</td>
						<td>
							<asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel1" /></td>
						<td>
							<asp:TextBox Text='<%# Bind("课程名") %>' runat="server" ID="课程名TextBox" /></td>
						<td>
							<asp:TextBox Text='<%# Bind("学分") %>' runat="server" ID="学分TextBox" /></td>
						<td>
							<asp:CheckBox Checked='<%# Bind("是否主科") %>' runat="server" ID="是否主科CheckBox" /></td>
					</tr>
				</EditItemTemplate>
				<EmptyDataTemplate>
					<table runat="server" style="">
						<tr>
							<td>未返回数据。</td>
						</tr>
					</table>
				</EmptyDataTemplate>
				<InsertItemTemplate>
					<tr style="">
						<td>
							<asp:Button runat="server" CommandName="Insert" Text="插入" ID="InsertButton" />
							<asp:Button runat="server" CommandName="Cancel" Text="清除" ID="CancelButton" />
						</td>
						<td>
							<asp:TextBox Text='<%# Bind("ID") %>' runat="server" ID="IDTextBox" /></td>
						<td>
							<asp:TextBox Text='<%# Bind("课程名") %>' runat="server" ID="课程名TextBox" /></td>
						<td>
							<asp:TextBox Text='<%# Bind("学分") %>' runat="server" ID="学分TextBox" /></td>
						<td>
							<asp:CheckBox Checked='<%# Bind("是否主科") %>' runat="server" ID="是否主科CheckBox" /></td>
					</tr>
				</InsertItemTemplate>
				<ItemTemplate>
					<tr style="">
						<td>
							<asp:Button runat="server" CommandName="Delete" Text="删除" ID="DeleteButton" />
							<asp:Button runat="server" CommandName="Edit" Text="编辑" ID="EditButton" />
						</td>
						<td>
							<asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
						<td>
							<asp:Label Text='<%# Eval("课程名") %>' runat="server" ID="课程名Label" /></td>
						<td>
							<asp:Label Text='<%# Eval("学分") %>' runat="server" ID="学分Label" /></td>
						<td>
							<asp:CheckBox Checked='<%# Eval("是否主科") %>' runat="server" ID="是否主科CheckBox" Enabled="false" /></td>
					</tr>
				</ItemTemplate>
				<LayoutTemplate>
					<table runat="server">
						<tr runat="server">
							<td runat="server">
								<table runat="server" id="itemPlaceholderContainer" style="" border="0">
									<tr runat="server" style="">
										<th runat="server"></th>
										<th runat="server">ID</th>
										<th runat="server">课程名</th>
										<th runat="server">学分</th>
										<th runat="server">是否主科</th>
									</tr>
									<tr runat="server" id="itemPlaceholder"></tr>
								</table>
							</td>
						</tr>
						<tr runat="server">
							<td runat="server" style="">
								<asp:DataPager runat="server" ID="DataPager1">
									<Fields>
										<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
									</Fields>
								</asp:DataPager>
							</td>
						</tr>
					</table>
				</LayoutTemplate>
				<SelectedItemTemplate>
					<tr style="">
						<td>
							<asp:Button runat="server" CommandName="Delete" Text="删除" ID="DeleteButton" />
							<asp:Button runat="server" CommandName="Edit" Text="编辑" ID="EditButton" />
						</td>
						<td>
							<asp:Label Text='<%# Eval("ID") %>' runat="server" ID="IDLabel" /></td>
						<td>
							<asp:Label Text='<%# Eval("课程名") %>' runat="server" ID="课程名Label" /></td>
						<td>
							<asp:Label Text='<%# Eval("学分") %>' runat="server" ID="学分Label" /></td>
						<td>
							<asp:CheckBox Checked='<%# Eval("是否主科") %>' runat="server" ID="是否主科CheckBox" Enabled="false" /></td>
					</tr>
				</SelectedItemTemplate>
			</asp:ListView>

		</div>
	</form>
</body>
</html>
