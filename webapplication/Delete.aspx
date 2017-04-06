<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" Inherits="webapplication.Delete" %>  

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
<br>
	<br>
	<h1 class="pageTitle">Delete Student</h1>
	<form id="form1" runat="server">
  		<div class="form-group">
			<p>First Name</p>
			<asp:TextBox id="fname" CssClass="form-control" runat="server"></asp:TextBox>
			<br/>
			<p>Middle Name</p>
			<asp:TextBox id="mname"  CssClass="form-control" runat="server"></asp:TextBox>
			<br/>
			<p>Last Name</p>
			<asp:TextBox id="lname" CssClass="form-control" runat="server"></asp:TextBox>
			<br/>
			<p>Programme Enrolled</p>	
		    <asp:DropDownList id="ProgramList"  CssClass="form-control" runat="server">
			    <asp:ListItem Value="1">Arts And Science</asp:ListItem>
				<asp:ListItem Value="2">School Of Medicine</asp:ListItem>
				<asp:ListItem Value="3">Vet School</asp:ListItem>
			</asp:DropDownList>
			<br/>
			<p>Club</p>
				<asp:TextBox id="club" CssClass="form-control" runat="server"></asp:TextBox>
			<br>
			<p>Student ID</p>
			<asp:TextBox id="id" CssClass="form-control"  runat="server"></asp:TextBox>
			<br/>
			<asp:Button id="searchBtn"  CssClass="btn btn-success" Text="Search" OnClick="searchBtn_Click"  runat="server" />
			<asp:Button id="deleteBtn"  CssClass="btn btn-danger" Text="Delete" OnClick="deleteBtn_Click"  runat="server" />

				</div>


		<div>
		<asp:GridView id="StudentGridView" CssClass="StudentGridView table table-striped" runat="server" AutoGenerateColumns ="false" DataKeyNames="studentid" >
			<Columns>
       			 <asp:BoundField DataField="studentid" HeaderText="S.No." />
       			 <asp:BoundField DataField="firstName" HeaderText="first Name" />
       			 <asp:BoundField DataField="middleInitial" HeaderText="M.I." />
       			 <asp:BoundField DataField="lastName" HeaderText="lastName" />
       			 <asp:ImageField DataImageUrlField="avatarpath"  HeaderText="Image" />

				</Columns>
				
			</asp:GridView>
			
		</div>

		
	</form>
</asp:Content>