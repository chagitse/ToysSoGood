<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNewProduct.aspx.cs" Inherits="ToysSoGood.Admin.AddNewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="SavePicture"/>
    <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
</asp:Content>
