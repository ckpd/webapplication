<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" Inherits="webapplication.Search" %>  

<asp:Content ID="searchPageContent" ContentPlaceHolderID="Main" runat="server">
	<br>
	<br>
	<h1 class="pageTitle">Search Student</h1>
	<form id="form1" runat="server">
  		<div class="form-group">
			<p>First Name</p>
			<asp:TextBox id="fname" CssClass="form-control"  runat="server"></asp:TextBox>
			<br/>
			<p>Middle Name</p>
			<asp:TextBox id="mname" CssClass="form-control"  runat="server"></asp:TextBox>
			<br/>
			<p>Last Name</p>
			<asp:TextBox id="lname" CssClass="form-control"  runat="server"></asp:TextBox>
			<br/>
			<p>Programme Enrolled</p>				
		    <asp:DropDownList id="ProgramList" CssClass="form-control"  runat="server">
				<asp:ListItem Selected="false"></asp:ListItem>
			    <asp:ListItem Value="1">Arts And Science</asp:ListItem>
				<asp:ListItem Value="2">School Of Medicine</asp:ListItem>
				<asp:ListItem Value="3">Vet School</asp:ListItem>
			</asp:DropDownList>
			<br/>
			<p>Club</p>
			 <asp:DropDownList id="club" CssClass="form-control" runat="server" >
                            <asp:ListItem>Select a club</asp:ListItem>
                            <asp:ListItem Value="1">Math Club</asp:ListItem>
                            <asp:ListItem Value="2">Science Club</asp:ListItem>
                            <asp:ListItem Value="3">IT Club</asp:ListItem>
                        </asp:DropDownList>
			<br>
			<p>Student ID Number</p>
			<asp:TextBox id="id" CssClass="form-control"  runat="server"></asp:TextBox>
			<br/>
			<asp:Button id="searchBtn" CssClass="btn btn-large btn-success"  Text="Search" OnClick="searchBtn_Click"  runat="server" />
	
				</div>
				<br/>
			<br/>
			<br/>
			<br/>
			<br/>


	<!---- Gridview for student results---->
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
