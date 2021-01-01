<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GridViewEdit.aspx.cs" Inherits="ToysSoGood.Admin.GridViewEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:gridview runat="server" id="GridView1" OnRowEditing="GridView1_RowEditing">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:gridview>
</asp:Content>
