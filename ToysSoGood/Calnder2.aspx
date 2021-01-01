<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Calnder2.aspx.cs" Inherits="ToysSoGood.Calnder2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 text-center mb30">
                <h2>GYM TIMETABLE</h2>
                </div>
                <div class="table-responsive">
                    <table class="timetable table table-striped ">
                        <thead>
                            <tr class="text-center">
                                <th scope="col"></th>
                                <th scope="col">Sunday</th>
                                <th scope="col">Monday</th>
                                <th scope="col">Tuesday</th>
                                <th scope="col">Wednesday</th>
                                <th scope="col">Thursday</th>
                                <th scope="col">Friday</th>                                                                
                            </tr>
                        </thead>
                    <asp:Repeater ID="MovieRepeater" runat="server">
                        <ItemTemplate>
                    
                        <tbody>
                            <tr>
                                <th scope="row">07:00 Am - 08:00 Am</th>
                                <td></td>
                                <td></td>
                                <td class="timetable-workout"> <asp:Label ID="Label4" runat="server" Text='<%# Eval ("MovieName") %>' Font-Size="17px" Font-Bold="True"></asp:Label>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval ("MovieDescription") %>' style="font-family:Arial;"></asp:Label></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                                   
        
    </ItemTemplate>
            <SeparatorTemplate>
                <div style="height: 3px;">
                </div>
            </SeparatorTemplate>
        </asp:Repeater>
                        <//table>
            </div>
        </div>
    </div>
    <!-- timetable -->
</asp:Content>
