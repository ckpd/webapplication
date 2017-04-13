<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" Inherits="webapplication.Add" %>  


<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
		<br>
		<br>
		<h1 class="pageTitle">Add Student</h1>
	    <form id="form1" runat="server">
        <div class="form-group" style="width: 77%">
                
            <p></p>
            <table style="width: 100%;">
                <tr>
                    <td style="width: 410px; text-align: right; height: 32px;">First Name: </td>
                    <td style="width: 355px; text-align: right; height: 32px;">
                    <asp:TextBox ID="fname" CssClass="form-control" runat="server" Width="326px"></asp:TextBox>
                    </td>
                    <td style="width: 480px; height: 32px; text-align: left;">
                        &nbsp;&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter a First name" ControlToValidate="fname" Text="Please Enter a First name" Display="Dynamic" style="color: #CC0000"></asp:RequiredFieldValidator>
												<asp:CompareValidator id="fnameValidate" Type="String" Text="Enter a Valid Name" runat="server" ControlToValidate="fname"/>

                        </strong>
                    </td>
                </tr>
				
                <tr>
                    <td style="width: 410px; text-align: right; height: 39px;">Middle Initial: </td>
                    <td style="width: 355px; text-align: right; height: 39px;">
                        <asp:TextBox ID="mname" CssClass="form-control" runat="server" Width="327px" style="margin-bottom: 0px"></asp:TextBox>
                    </td>
                    <td style="width: 480px; text-align: left; height: 39px;">
                        &nbsp;&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter a Single Letter initial" ControlToValidate="mname" Text="Please Enter a Single Letter initial" Display="Dynamic" style="color: #CC0000"></asp:RequiredFieldValidator>
											<asp:CompareValidator id="mnameValidate" Type="String" Text="Enter a Valid Name" runat="server" ControlToValidate="mname"/>

                        </strong></td>
                </tr>
				
                <tr>
                    <td style="width: 410px; text-align: right">Last Name: </td>
                    <td style="width: 355px; text-align: right;">
                        <asp:TextBox ID="lname" CssClass="form-control" runat="server" Width="327px"></asp:TextBox>

                    </td>
                    <td style="width: 480px; text-align: left;">
                        &nbsp;&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter a Last name" ControlToValidate="lname" Text="Please Enter a Last name" Display="Dynamic" style="color: #CC0000"></asp:RequiredFieldValidator>
                        					<asp:CompareValidator id="lnameValidate" Type="String" Text="Enter a Valid Name" runat="server" ControlToValidate="lname"/>

					</strong></td>
                </tr>
                <tr>
                    <td style="width: 410px; text-align: right">Phone #1: </td>
                    <td style="width: 355px; text-align: right;">
                        <asp:TextBox ID="phoneNumberOne" CssClass="form-control" runat="server" Width="327px"></asp:TextBox>
                    </td>
                    <td style="width: 480px; text-align: left;">
                        &nbsp;&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter a number" ControlToValidate="phoneNumberOne" Text="Please Enter a number" Display="Dynamic" style="color: #CC0000"></asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td style="width: 410px; text-align: right">Phone #2: </td>
                    <td style="width: 355px; text-align: right;">
                        <asp:TextBox ID="phoneNumberTwo" CssClass="form-control" runat="server" Width="327px"></asp:TextBox>
                    </td>
                    <td style="width: 480px; text-align: left;">
                        &nbsp;&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter a number" ControlToValidate="phoneNumberTwo" Text="Please Enter a number" Display="Dynamic" style="color: #CC0000"></asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td style="width: 410px; text-align: right">Profile Picture: </td>
                    <td style="width: 355px; text-align: right;">
                        <asp:FileUpload ID="image" CssClass="form-control" runat="server" Width="337px" />
                    </td>
                    <td style="width: 480px; text-align: left;">
                        &nbsp;&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please select profile picture" ControlToValidate="image" Text="Please select profile picture" Display="Dynamic" style="color: #CC0000"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="image" Display="Dynamic" ErrorMessage="Selected file is not a picture" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td style="width: 410px; text-align: right; height: 37px;">Program List: </td>
                    <td style="width: 355px; text-align: right; height: 37px;">
                        <asp:DropDownList id="ProgramList" CssClass="form-control" runat="server" Width="337px">
                            <asp:ListItem>Select a Program</asp:ListItem>
                    <asp:ListItem Value="1">Arts And Science</asp:ListItem>
                    <asp:ListItem Value="2">School Of Medicine</asp:ListItem>
                    <asp:ListItem Value="3">Vet School</asp:ListItem>
                            </asp:DropDownList>
                    </td>
                    <td style="width: 480px; text-align: left; height: 37px;">
                        &nbsp;&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please select a Program" ControlToValidate="ProgramList" Text="Please select a Program" Display="Dynamic" style="color: #CC0000" InitialValue="Select a Program"></asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td style="width: 410px; text-align: right">Club: </td>
                    <td style="width: 355px; text-align: right;">
                        <asp:DropDownList id="club" CssClass="form-control" runat="server" Width="337px">
                            <asp:ListItem>Select a club</asp:ListItem>
                            <asp:ListItem Value="1">Math Club</asp:ListItem>
                            <asp:ListItem Value="2">Science Club</asp:ListItem>
                            <asp:ListItem Value="3">IT Club</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 480px; text-align: left;">
                        &nbsp;&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please select a club" ControlToValidate="club" Text="Please select a club" Display="Dynamic" style="color: #CC0000" InitialValue="Select a club"></asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
					<br/>
                    <td style="text-align: center" colspan="3">
                        <asp:Button id="registerBtn" CssClass="btn btn-large btn-success" Text="Register" OnClick="registerClick"  runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 410px; text-align: right">&nbsp;</td>
                    <td style="width: 355px; text-align: right;">&nbsp;</td>
                    <td style="width: 480px">&nbsp;</td>
                </tr>
            </table>
                
            </div>
    </form>
</asp:Content>