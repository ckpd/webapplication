<%@ Page Language="C#" Inherits="webapplication.Add" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>AddStudent</title>
</head>
<body>
		
	<form id="form1" runat="server">
			<div>
			<p>fname</p>
			<asp:TextBox id="fname" runat="server"></asp:TextBox>
			<p>mname</p>
			<asp:TextBox id="mname" runat="server"></asp:TextBox>
			<p>lname</p>
			<asp:TextBox id="lname" runat="server"></asp:TextBox>
			<p>#1</p>
			<asp:TextBox id="phoneNumberOne" runat="server"></asp:TextBox>
			<p>#2</p>
			<asp:TextBox id="phoneNumberTwo" runat="server"></asp:TextBox>
			<p>image</p>
			<asp:FileUpload id="image" runat="server"></asp:FileUpload>
			<p>Programs</p>
				
		    <asp:DropDownList id="ProgramList" runat="server">
			    <asp:ListItem Value="1">Arts And Science</asp:ListItem>
				<asp:ListItem Value="2">School Of Medicine</asp:ListItem>
				<asp:ListItem Value="3">Vet School</asp:ListItem>
			</asp:DropDownList>
			<p>club</p>
			<asp:TextBox id="club" runat="server"></asp:TextBox>
				
			<asp:Button id="registerBtn" Text="Register" OnClick="registerClick"  runat="server" />

				</div>
	</form>
</body>
</html>

