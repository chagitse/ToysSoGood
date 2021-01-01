<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DataListExample.aspx.cs" Inherits="ToysSoGood.DataListExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
 
     <title>DataList Example</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 

  
      <h3>DataList Example</h3>
 
      <asp:DataList id="ItemsList"
           BorderColor="black"
           CellPadding="5"
           CellSpacing="5"
           RepeatDirection="Vertical"
           RepeatLayout="Table"
           RepeatColumns="0"
           BorderWidth="0"
           runat="server">

         <HeaderStyle BackColor="#aaaadd">
         </HeaderStyle>

         <AlternatingItemStyle BackColor="Gainsboro">
         </AlternatingItemStyle>

         <HeaderTemplate>

            List of items

         </HeaderTemplate>
               
         <ItemTemplate>

            Description: <br />
            <%# DataBinder.Eval(Container.DataItem, "StringValue") %>

            <br />

            Price: <%# DataBinder.Eval(Container.DataItem, "CurrencyValue", "{0:c}") %>

            <br />

            <asp:Image id="ProductImage"
                 AlternatingText='<%# DataBinder.Eval(Container.DataItem, "StringValue") %>'
                 ImageUrl='<%# DataBinder.Eval(Container.DataItem, "ImageValue") %>'
                 runat="server"/>

         </ItemTemplate>
 
      </asp:DataList>
 
      <hr />

      <table cellpadding="5">

         <tr>

            <th>

               Repeat direction:

            </th>

            <th>

               Repeat layout:

            </th>

            <th>

               Repeat columns:

            </th>

            <th>

               <asp:CheckBox id="ShowBorderCheckBox"
                    Text="Show border"
                    Checked="False" 
                    runat="server" />

            </th>

         </tr>

         <tr>

            <td>

               <asp:DropDownList id="DirectionList" 
                    runat="server">

                  <asp:ListItem>Horizontal</asp:ListItem>
                  <asp:ListItem Selected="True">Vertical</asp:ListItem>

               </asp:DropDownList>

            </td>

            <td>

               <asp:DropDownList id="LayoutList" 
                    runat="server">

                  <asp:ListItem Selected="True">Table</asp:ListItem>
                  <asp:ListItem>Flow</asp:ListItem>

               </asp:DropDownList>

            </td>

            <td>

               <asp:DropDownList id="ColumnsList" 
                    runat="server">

                  <asp:ListItem Selected="True">0</asp:ListItem>
                  <asp:ListItem>1</asp:ListItem>
                  <asp:ListItem>2</asp:ListItem>
                  <asp:ListItem>3</asp:ListItem>
                  <asp:ListItem>4</asp:ListItem>
                  <asp:ListItem>5</asp:ListItem>

               </asp:DropDownList>

            </td>

            <td>

               &nbsp;

            </td>


         </tr>

      </table>     
         
      <asp:LinkButton id="RefreshButton" 
           Text="Refresh DataList" 
         
           runat="server"/>

 


</asp:Content>
