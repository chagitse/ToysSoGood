<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DataListScedual.aspx.cs" Inherits="ToysSoGood.DataListScedual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
        <AlternatingItemStyle BackColor="White" />
         <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#333333" />
         <ItemTemplate>
        <h4>
            <asp:Label runat="server" ID="ProductNameLabel"
                Text='<%# DataBinder.Eval(Container.DataItem, "name") %>'></asp:Label>
        </h4>
      
            <asp:Label runat="server" ID="CategoryNameLabel"
                Text='<%# DataBinder.Eval(Container.DataItem, "des") %>' />
             <br />
      
            <asp:Label runat="server" ID="UnitPriceLabel"
                Text='<%# DataBinder.Eval(Container.DataItem, "price", "{0:c}") %>' />
    </ItemTemplate>


     
  
        </asp:DataList>
</asp:Content>
