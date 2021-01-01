<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowProducts.aspx.cs" Inherits="ToysSoGood.ShowProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" > 
        <% if (Session["user"] == "אורח")
            {
                Response.Write("דף זה מיועד לחברים בלבד");
            }
           
        %> 
        <asp:Repeater ID="MovieRepeater" runat="server">
            <ItemTemplate>
                    <div class="col-xs-3 col-sm-3 col-md-3" style="padding-top:50px">
                        <asp:ImageButton ID="ImageButton1" class="img-item" runat="server" Height="160px" Width="120px" ImageUrl='<%# Eval ("ProductImage","~/Images/{0}") %>' CommandName='<%# Eval ("ID") %>' OnClick="ImageButton1_Click" />
                        <div class="row" >
                        <asp:Label ID="Label2" runat="server" Width="150px" Text='<%# Eval ("ProductDesc") %>' style="font-family:Arial;"></asp:Label>
                    </div>
              </div>
                    
            </ItemTemplate>
            <SeparatorTemplate>
                <div style="height: 3px;">
                </div>
            </SeparatorTemplate>
        </asp:Repeater>
        </div>


    
</asp:Content>
