$(function(){
	$("#myUser").submit(function(){
			var name = $("#name").val();
			if(name==""){
				alert("名字不能为空！");
				return false;
			}
		var password = $("#password").val();
		if(password==""){
			alert("密码不能为空!");
			return false;
		}
		if(password.length<6){
			alert("密码不能少于6位!");
			return false;
		}
		var Repwd = $("#re-password").val();
		var password = $("#password").val();
		if(password!=Repwd){
			alert("两次密码输入不一致!");
			return false;
		}
		return true;
	})	
})
