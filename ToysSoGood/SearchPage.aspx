<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="ToysSoGood.SearchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <asp:Repeater ID="MovieRepeater" runat="server">
            <ItemTemplate>
                <table style="width: 600px; background-color: #EDF8FA">
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="160px" Width="120px" ImageUrl='<%# Eval ("ProductImage") %>' />
                        </td>
                        <td>
                            
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval ("ProductDesc") %>' style="font-family:Arial;"></asp:Label>
                        </td>
                        <td style="vertical-align: bottom;">
                            <asp:LinkButton ID="OrderLink" runat="server" CommandArgument='<%# Eval ("ProductName") %>'
                                OnClick="OrderLink_Click" Text="המשך>>"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SeparatorTemplate>
                <div style="height: 3px;">
                </div>
            </SeparatorTemplate>
        </asp:Repeater>
        </form>
</asp:Content>
