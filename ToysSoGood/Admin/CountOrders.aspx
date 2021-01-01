<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CountOrders.aspx.cs" Inherits="ToysSoGood.Admin.CountOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   Width="324px" >
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="Name" />
            <asp:ImageField DataImageUrlField="ProductImage" DataImageUrlFormatString="~/Images/{0}" headertext="Photo"  
            readonly="true" ControlStyle-Height="100" ControlStyle-Width="70"></asp:ImageField>
            <asp:TemplateField>
                <ItemTemplate >
                    
                   <!-- <asp:Image ID="Image1" class="img-item" runat="server" Height="100" Width="70" ImageUrl='eval...' />-->
                    <asp:ImageButton ID="ImageButton1" runat="server" class="img-item" Height="100" Width="70" ImageUrl='<%# Eval ("ProductImage","~/Images/{0}") %>' OnClick="ImageButton1_Click" CommandArgument = '<%#Eval("ID") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="mycount" HeaderText="Count orders" />
            <asp:BoundField DataField="ID" HeaderText="product ID" readonly="true"/>

            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server"  Checked='<%# Eval("isSelcted") %>' />
                </ItemTemplate>
            </asp:TemplateField>
           
        </Columns>
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
   

</asp:Content>
