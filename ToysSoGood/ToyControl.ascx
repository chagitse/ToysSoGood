<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ToyControl.ascx.cs" Inherits="ToysSoGood.ToyControl" %>
<div style="width: 135px">
   
    <table class="userContolTbl">
    <tr>
        <td>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="166px" 
                onclick="ImageButton1_Click" Width="125px" BorderColor="Red" />
        </td>
       </tr>
       <tr>
        <td>
            <asp:Label ID="lblDescription" runat="server" Font-Size="Small" Style="text-align:center;"></asp:Label>
        </td>
           
    </tr>
        <tr>
        <td>
             <asp:Label ID="Price" runat="server" Font-Size="Small" Style="text-align:center;"></asp:Label>
        </td>
           
    </tr>
    </table>
</div>
