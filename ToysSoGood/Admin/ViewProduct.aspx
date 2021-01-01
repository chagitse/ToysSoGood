<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="ToysSoGood.Admin.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
         <div class="col-4"></div>
        <div class="col-4">
                 <asp:GridView ID="GridView1" runat="server">

                 </asp:GridView>
            </div>
        <div class="col-4"></div>
        </div>
</asp:Content>
