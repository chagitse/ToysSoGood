﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="ToysSoGood.Admin.Graph" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <script>
window.onload = function () {

// Construct options first and then pass it as a parameter
var options1 = {
	animationEnabled: true,
	title: {
		text: "Chart inside a jQuery Resizable Element"
	},
	data: [{
		type: "column", //change it to line, area, bar, pie, etc
		legendText: "Try Resizing with the handle to the bottom right",
		showInLegend: true,
		dataPoints: [
			{ y: 1},
			{ y:3},
			{ y: 14 },
			{ y: 12 },
			{ y: 19 },
			{ y: 14 },
			{ y: 26 },
			{ y: 10 },
			{ y: 22 }
			]
		}]
};

$("#resizable").resizable({
	create: function (event, ui) {
		//Create chart.
		$("#chartContainer1").CanvasJSChart(options1);
	},
	resize: function (event, ui) {
		//Update chart size according to its container size.
		$("#chartContainer1").CanvasJSChart().render();
	}
});

}
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div id="resizable" style="height: 370px;border:1px solid gray;">
	<div id="chartContainer1" style="height: 100%; width: 100%;"></div>
</div>
    <script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery-ui.1.11.2.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
</asp:Content>
