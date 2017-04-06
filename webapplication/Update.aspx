<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" Inherits="webapplication.Update" %>  

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
<br>
	<br>
	<h1 class="pageTitle">Update Student</h1>
		<form id="form1" runat="server">
  		<div class="form-group">
			<br/>
			<p>First Name</p>
			<asp:TextBox id="fname"  CssClass="form-control"  runat="server"></asp:TextBox>
			<br/>
			<p>Middle Initial</p>
			<asp:TextBox id="mname"  CssClass="form-control"  runat="server"></asp:TextBox>
			<br/>
			<p>Last Name</p>
			<asp:TextBox id="lname"  CssClass="form-control"  runat="server"></asp:TextBox>
			<br/>
			<p> Student ID</p>
			<asp:TextBox id="id"  CssClass="form-control"  runat="server"></asp:TextBox>
			<br/>
			<asp:Button id="updateBtn" CssClass="btn btn-large btn-success" Text="Update" OnClick="updateBtn_Click"  runat="server" />
			
			</div>
	</form>
	 </asp:Content>