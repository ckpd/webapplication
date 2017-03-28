<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" Inherits="webapplication.Search" %>  

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
	
				</div>
	</form>


	<div>

	<asp:GridView id="StudentGridView" runat="server" AutoGenerateColumns ="false" DataKeyNames="studentid" >

			<Columns>
       			 <asp:BoundField DataField="studentid" HeaderText="S.No." />
       			 <asp:BoundField DataField="firstName" HeaderText="first Name" />
       			 <asp:BoundField DataField="middleInitial" HeaderText="M.I." />
       			 <asp:BoundField DataField="lastName" HeaderText="lastName" />
       			 <asp:ImageField DataImageUrlField="avatarpath" HeaderText="Image" />
				</Columns>
			</asp:GridView>
		</div>
		
</asp:Content>
