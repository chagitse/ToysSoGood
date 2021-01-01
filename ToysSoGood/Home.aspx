<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ToysSoGood.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <!-- <style>
        body {
    background: url('Images/20.jpg') no-repeat center center fixed;
    background-size: 1000px;
    color:#fff;
    background-color:white;
    font-family: 'Open Sans', Arial, Helvetica, Sans-Serif;
}
    </style>-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
  
    <a><img src="Images/20.jpg" alt="Logo" style="width:100px;"></a>
     <script type="text/javascript">
    $(window).on('load',function(){
        $('#myModal').modal('show');
    });
</script>
     <!-- The Modal -->
  <div class="modal" id="myModal" >
    <div class="modal-dialog">
      <div class="modal-content" style="background-color:orange">
      
        <!-- Modal Header -->
        <div class="modal-header">
           <h1>מבצע סוף עונה </h1>
           
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" dir="rtl">
           <h1  > 10% הנחה על כל החנות</h1>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
</asp:Content>
