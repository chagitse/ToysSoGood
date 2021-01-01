<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="ToysSoGood.Admin.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        
       <asp:DropDownList ID="ddl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_SelectedIndexChanged"></asp::DropDownList>
    <asp:DropDownList ID="ddl2" runat="server">
        <asp:ListItem Value="aaa">תשרי</asp:ListItem>
        <asp:ListItem Value="bbb">חשוון</asp:ListItem>
        <asp:ListItem Value="ccc">כסליו</asp:ListItem>
    </asp:DropDownList>
</asp:Content>
