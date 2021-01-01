<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RepeatColumnAndDirection.aspx.cs" Inherits="ToysSoGood.RepeatColumnAndDirection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="4" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatColumns="3">
         <AlternatingItemStyle BackColor="White" />
         <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#333333" />
         <ItemTemplate>
        <h4>
            <asp:Label runat="server" ID="ProductNameLabel"
                Text='<%# Eval("ProductName") %>'></asp:Label>
        </h4>
        Available in the
            <asp:Label runat="server" ID="CategoryNameLabel"
                Text='<%# Eval("ProductDesc") %>' />
             <br />
        store for
            <asp:Label runat="server" ID="UnitPriceLabel"
                Text='<%# Eval("ProductPrice", "{0:C}") %>' />
    </ItemTemplate>



         <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />



    </asp:DataList>
</asp:Content>
