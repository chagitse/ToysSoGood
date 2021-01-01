<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowOrders.aspx.cs" Inherits="ToysSoGood.Admin.ShowOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowEditing="GridView1_RowEditing" Width="324px" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:CommandField HeaderText="ערוך" ShowEditButton="True"  >
          
            </asp:CommandField>
            
               
            
        </Columns>
    </asp:GridView>
   

</asp:Content>
