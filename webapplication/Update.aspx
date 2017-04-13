<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" Inherits="webapplication.Update" %>  

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
<br>
	<br>
	<h1 class="pageTitle">Update Student</h1> 
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
			<asp:RangeValidator id="idValidate"  ControlToValidate="id" Type="Integer" MinimumValue="0" MaximumValue="2147483647" Text="Enter a Valid Student ID" runat="server" />

			<br/>
			<asp:Button id="updateBtn" CssClass="btn btn-large btn-success" Text="Update" OnClick="updateBtn_Click"  runat="server"  OnClientClick = "Confirm()"/>
			
			</div>

	</form>
	 </asp:Content>