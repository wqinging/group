$(function(){
	
	
	var areaName = $(".otherShow-buttom p:eq(0) span").text()+$(".otherShow-buttom p:eq(1) span").text();
	var map = new BMap.Map('allmap');
	map.centerAndZoom(areaName, 25);
	map.enableScrollWheelZoom(true);
	map.addTileLayer(new BMap.PanoramaCoverageLayer());
	var stCtrl = new BMap.PanoramaControl();
	stCtrl.setOffset(new BMap.Size(20, 20));
	map.addControl(stCtrl);
})



