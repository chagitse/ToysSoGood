<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="ToysSoGood.RegisterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="row h-100 justify-content-center align-items-center">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	
			<h2>Welcome to Step by Step <small>Sign up</small></h2>
			<hr class="colorgraph">
			<div class="row">
               
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                     
                        <asp:TextBox name="first_name" id="first_name" class="form-control input-lg" placeholder="First Name" tabindex="1" runat="server"></asp:TextBox>
                       
                        <asp:RequiredFieldValidator ID="RequiredFirstName" runat="server" ErrorMessage="שם משתמש חובה" ControlToValidate="first_name" ForeColor="Red"></asp:RequiredFieldValidator>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                       
                        <asp:TextBox name="last_name" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required last name" ControlToValidate="last_name" ForeColor="Red"></asp:RequiredFieldValidator>
					</div>
				</div>
			</div>
			<div class="form-group">
       

            
                <asp:TextBox ID="txtIdNumber" runat="server" MaxLength="9" class="form-control input-lg" placeholder="ID" tabindex="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtIdNumber" ErrorMessage="חסר מספר תעודת זהות">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtIdNumber" ErrorMessage="תעודת זהות לא תקנית" 
                    ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
            </div>
			<div class="form-group">
				
                <asp:TextBox name="email" id="email" class="form-control input-lg" placeholder="Email Address" tabindex="3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="need email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="worng email" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			</div>
            <div class="form-group">
				
                <asp:TextBox name="user_name" id="user_name" class="form-control input-lg" placeholder="User Name" tabindex="4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="user_name"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="CustomValidator"  ControlToValidate="user_name" ForeColor="Red" OnServerValidate="id_ServerValidate"></asp:CustomValidator>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                       
                        <asp:TextBox name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToCompare="password"></asp:RequiredFieldValidator>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <asp:TextBox name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirm Password" tabindex="6" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server"  ErrorMessage="CompareValidator" ForeColor="Red" ValueToCompare="password" ControlToValidate="password_confirmation" ControlToCompare="password"></asp:CompareValidator>
    

					</div>
				</div>
			</div>


			<div class="row">
				<div class="col-xs-4 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>
                        <asp:CheckBox name="t_and_c" id="t_and_c" class="hidden" value="1" runat="server" />
                       <asp:Label ID="lt_and_c" runat="server" Text="" Visible="false" ForeColor="Red" style="z-index: 1; left: 164px; top: 27px; position: static"></asp:Label>
					</span>
				</div>
				<div class="col-xs-8 col-sm-9 col-md-9">
					 By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> 
				</div>
			</div>
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6">
                   
                    <asp:Button ID="btSignup" runat="server" CausesValidation="true"  Text="Sign Up" CssClass="btn btn-primary btn-block btn-lg"  OnClick="btSignup_Click1" TabIndex="7" />    </div>
				<div class="col-xs-12 col-md-6"><a href="LogIn.aspx" class="btn btn-success btn-block btn-lg">Sign In</a></div>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

			</div>
		
	</div>
</div>



</asp:Content>
