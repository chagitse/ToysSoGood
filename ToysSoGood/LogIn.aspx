<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ToysSoGood.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                       
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="username" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="text" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-info btn-md" type="submit" OnClick="Button1_Click" />
                                <asp:Label ID="Error" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="#" class="text-info">Register here</a>
                     
<button onclick="myFunction()">Try it</button>

<script>
    {
     
  var myWindow = window.open("PopUpWindow.aspx", "", "fullscreen=yes,scrollbars=no,resizable=no,width=800,height=500 ,top=100, left=100");
}
</script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
