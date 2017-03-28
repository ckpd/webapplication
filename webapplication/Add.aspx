<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" Inherits="webapplication.Add" %>  


<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
	
	<form id="form1" runat="server">
  		<div class="form-group">
				<p>fname</p>
				<asp:TextBox id="fname" CssClass="form-control" runat="server"></asp:TextBox>
				<p>mname</p>
				<asp:TextBox id="mname" CssClass="form-control" runat="server"></asp:TextBox>
				<p>lname</p>
				<asp:TextBox id="lname" CssClass="form-control" runat="server"></asp:TextBox>
				<p>#1</p>
				<asp:TextBox id="phoneNumberOne" CssClass="form-control" runat="server"></asp:TextBox>
				<p>#2</p>
				<asp:TextBox id="phoneNumberTwo" CssClass="form-control" runat="server"></asp:TextBox>
				<p>image</p>
				<asp:FileUpload id="image" CssClass="form-control" runat="server"></asp:FileUpload>
				<p>Programs</p>
					
			    <asp:DropDownList id="ProgramList" CssClass="form-control" runat="server">
				    <asp:ListItem Value="1">Arts And Science</asp:ListItem>
					<asp:ListItem Value="2">School Of Medicine</asp:ListItem>
					<asp:ListItem Value="3">Vet School</asp:ListItem>
				</asp:DropDownList>
				<p>club</p>
				<asp:TextBox id="club" CssClass="form-control" runat="server"></asp:TextBox>
					<br>
				<asp:Button id="registerBtn" CssClass="btn btn-large" Text="Register" OnClick="registerClick"  runat="server" />

			</div>
	</form>

</asp:Content>