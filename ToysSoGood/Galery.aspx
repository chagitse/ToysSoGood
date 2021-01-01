<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Galery.aspx.cs" Inherits="ToysSoGood.Galery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="form-horizontal" runat="server">
                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Products</h2>
    </div>
    
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" BackColor="White" BorderColor="#336666" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AllowPaging="True" AllowSorting="True" BorderStyle="Double" OnRowDataBound="OnRowDataBound" OnRowCommand="GridView1_RowCommand1" AutoGenerateColumns="False" >

        <Columns>
            <asp:TemplateField HeaderText="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("Image") %>' Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" />
            <asp:BoundField DataField="Pmodel" HeaderText="Model" />
             <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:BoundField DataField="QuantityAvailable" HeaderText="Quantity" />
            <asp:ButtonField ButtonType="Button" HeaderText="View Details" Text="View Details" CommandName="ViewDetails">
            <ControlStyle CssClass="mainButton1" />
            </asp:ButtonField>
            <asp:ButtonField ButtonType="Button" CommandName="AddToShoppingBag" HeaderText="Add To Cart" Text="Add To Cart">
            <ControlStyle CssClass="mainButton2" />
            </asp:ButtonField>
            <asp:BoundField DataField="ProductID" HeaderText="ID" ReadOnly="True" />
        </Columns>

        <EmptyDataTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
        </EmptyDataTemplate>

        <FooterStyle BackColor="White" ForeColor="#333333"></FooterStyle>

        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#336666" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="White" ForeColor="#333333" />

        <SelectedRowStyle BackColor="#339966" ForeColor="White" Font-Bold="True"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#487575"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#275353"></SortedDescendingHeaderStyle>
    </asp:GridView>
        
</asp:Content>
