<%@ Page Title="" Language="C#" MasterPageFile="~/Start5_master.Master" AutoEventWireup="true" CodeBehind="Start5_readallline.aspx.cs" Inherits="Chap06.Start5_readallline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style type="text/css">
		#txt_holder input {
			display: block;
			width: 400px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="holder_main" runat="server">
	<div id="txt_holder" style="width: 400px;" runat="server" clientidmode="Static"></div>
	<asp:Button ID="btn_save" runat="server" Text="保存修改" OnClick="btn_save_Click" />
</asp:Content>
