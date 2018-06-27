$(function(){
	$("#myHouse").submit(function(){
	var area = $("#area").val();
	if(area==""){
		alert("请填写小区");
		return false;
	}
	var build = $("#build").val();
	if(build==""){
		alert("请填写楼栋号");
		return false;
	}
	var builds = $("#builds").val();
	if(builds==""){
		alert("请填写单元号");
		return false;
	}
	var buildes = $("#buildes").val();
	if(buildes==""){
		alert("请填写门牌号");
		return false;
	}
	var price = $("#price").val();
	if(price==""){
		alert("请输入租金");
		return false;
	}
	var username = $("#username").val();
	if(username==""){
		alert("请输入您的姓名");
		return false;
	}
	var phone = $("#phone").val();
	if(phone==""){
		alert("请输入您的手机号码");
		return false;
	}
	if (phone.length!=11) {
		alert("请输入正确的手机号码")
		return false;
	}
	return true;
	});
});