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
			<br>
			<p>Student ID</p>
			<asp:TextBox id="id" CssClass="form-control"  runat="server"></asp:TextBox>
			<asp:RangeValidator id="idValidate"  ControlToValidate="id" Type="Integer" MinimumValue="0" MaximumValue="2147483647" Text="Enter a Valid Student ID" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="id" ErrorMessage="Please enter a valid student ID"></asp:RequiredFieldValidator>
			<br/>
			<asp:Button id="searchBtn"  CssClass="btn btn-success" Text="Search" OnClick="searchBtn_Click"  runat="server" />
			<asp:Button id="deleteBtn"  CssClass="btn btn-danger" Text="Delete" OnClick="deleteBtn_Click"  runat="server" />

				<br />
            <br />
            <br />
            <br />

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
	<script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to save data?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
</asp:Content>