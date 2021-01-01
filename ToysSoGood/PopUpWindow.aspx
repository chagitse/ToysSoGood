<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUpWindow.aspx.cs" Inherits="ToysSoGood.PopUpWindow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript"> 
        function max() 
        { 
            var obj = new ActiveXObject("Wscript.shell"); 
            obj.SendKeys("{f11}"); 
        } 
    </script> 
</head>
<body onload="javascript:max()" style="background-color:blueviolet ;border-style:none;margin-top:0;" >
    <form id="form1" runat="server">
        <div style="color:white">
            <h1>מבצע סוף עונה </h1>
             <h1>10% הנחה על כל החנות </h1>
        </div>
    </form>
    <script>
       document.body.requestFullscreen();
    </script>
</body>
</html>
