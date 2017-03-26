<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" Inherits="webapplication.Delete" %>  

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

	<form id="form1" runat="server">
			<div>
			<p>fname</p>
			<asp:TextBox id="fname" runat="server"></asp:TextBox>
			<p>mname</p>
			<asp:TextBox id="mname" runat="server"></asp:TextBox>
			<p>lname</p>
			<asp:TextBox id="lname" runat="server"></asp:TextBox>
			<p>Programs</p>				
		    <asp:DropDownList id="ProgramList" runat="server">
			    <asp:ListItem Value="1">Arts And Science</asp:ListItem>
				<asp:ListItem Value="2">School Of Medicine</asp:ListItem>
				<asp:ListItem Value="3">Vet School</asp:ListItem>
			</asp:DropDownList>
			<p>ID</p>
			<asp:TextBox id="id" runat="server"></asp:TextBox>
			<asp:Button id="searchBtn" Text="Search" OnClick="searchBtn_Click"  runat="server" />
			<asp:Button id="deleteBtn" Text="Delete" OnClick="deleteBtn_Click"  runat="server" />

				</div>
	</form>
</asp:Content>