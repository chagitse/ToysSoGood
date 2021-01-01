<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="ToysSoGood.UserSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row h-100 justify-content-center align-items-center">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form role="form" runat="server" onsubmit="return CheckForm()">
			<h2>Welcome to Step by Step <small>Sign up</small></h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <asp:TextBox name="first_name" id="first_name" class="form-control input-lg" placeholder="First Name" tabindex="1" runat="server"></asp:TextBox>
                        <asp:Label ID="lFirstName" runat="server" Text="" Visible="false" ForeColor="Red" style="z-index: 1; left: 164px; top: 10px; position: static"></asp:Label>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                       
                        <asp:TextBox name="last_name" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2" runat="server"></asp:TextBox>
                        <asp:Label ID="lLastName" runat="server" Text="" Visible="false" ForeColor="Red" style="z-index: 1; left: 164px; top: 27px; position: static"></asp:Label>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				
                <asp:TextBox name="email" id="email" class="form-control input-lg" placeholder="Email Address" tabindex="3" runat="server"></asp:TextBox>
                <asp:Label ID="lemail" runat="server" Text="" Visible="false" ForeColor="Red" style="z-index: 1; left: 164px; top: 27px; position: static"></asp:Label>
			</div>
            <div class="form-group">
				
                <asp:TextBox name="user_name" id="user_name" class="form-control input-lg" placeholder="User Name" tabindex="4" runat="server"></asp:TextBox>
                <asp:Label ID="lUserName" runat="server" Text="" Visible="false" ForeColor="Red" style="z-index: 1; left: 164px; top: 27px; position: static"></asp:Label>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <asp:TextBox name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="5" runat="server"></asp:TextBox>
                        <asp:Label ID="lPassword" runat="server" Text="" Visible="false" ForeColor="Red" style="z-index: 1; left: 164px; top: 27px; position: static"></asp:Label>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <asp:TextBox name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirm Password" tabindex="6" runat="server"></asp:TextBox>
						<asp:Label ID="lpassword_confirmation" runat="server" Text="" Visible="false" ForeColor="Red" style="z-index: 1; left: 164px; top: 27px; position: static"></asp:Label>
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
                   
                    <asp:Button ID="btSignup" runat="server"  Text="Sign Up" CssClass="btn btn-primary btn-block btn-lg"  OnClick="btSignup_Click" TabIndex="7" />    </div>
				<div class="col-xs-12 col-md-6"><a href="LogIn.aspx" class="btn btn-success btn-block btn-lg">Sign In</a></div>
			</div>
		</form>
	</div>
</div>

</asp:Content>
