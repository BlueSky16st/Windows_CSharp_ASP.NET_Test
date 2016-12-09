<%@ Page Title="" Language="C#" MasterPageFile="~/Start5_master.Master" AutoEventWireup="true" CodeBehind="Start5_readalltext.aspx.cs" Inherits="Chap06.Start5_readalltext" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="holder_main" runat="server">
	<asp:TextBox ID="txt_content" TextMode="MultiLine" Width="400px" Rows="13" runat="server"></asp:TextBox>
	<br />
	<asp:Button ID="btn_save" runat="server" Text="保存修改" OnClick="btn_save_Click" />
</asp:Content>
