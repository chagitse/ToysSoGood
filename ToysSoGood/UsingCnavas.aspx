<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UsingCnavas.aspx.cs" Inherits="ToysSoGood.UsingCnavas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <canvas id="canvas" style="background-color:papayawhip"></canvas>
     <script >
        var canvas = document.getElementById('canvas');
    /** @type {CanvasRenderingContext2D} */
        var ctx = canvas.getContext("2d");
      // var points = [];
            
}

 
               // set fill color of context
        ctx.fillStyle = "red";

        // create rectangle at a 100,100 point, with 20x20 dimensions
        ctx.fillRect(0, 0, 20, 20);


        
   
    rect = {},
    drag = false;

function init() {
  canvas.addEventListener('mousedown', mouseDown, false);
  canvas.addEventListener('mouseup', mouseUp, false);
  canvas.addEventListener('mousemove', mouseMove, false);
}
         function Point(x, y) {
  this.x = x;
  this.y = y;
}
         function mouseDown(e) {

  var x1 = e.pageX - this.offsetLeft;
    var y1 = e.pageY - this.offsetTop;

// to add more points, push an object to the array:
    points.push(new Point(1,2)});
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    draw();
  drag = true;
}

function mouseUp() {
  drag = false;
   
}
function mouseMove(e) {
 /* if (drag) {
    rect.w = (e.pageX - this.offsetLeft) - rect.startX;
    rect.h = (e.pageY - this.offsetTop) - rect.startY ;
    ctx.clearRect(0,0,canvas.width,canvas.height);
    draw();
  }*/
}

         function draw() {
  ​

    rect.startX = point[0].x;
    rect.startY = point[0].y;
     rect.w = 50;
    rect.h = 50;
    ctx.setLineDash([6]);
  ctx.fillRect(rect.startX, rect.startY, rect.w, rect.h);
}

init();

    </script>
</asp:Content>
