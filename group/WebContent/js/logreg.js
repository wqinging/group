$(function() {

	$("button").click(function() {
		$("#login").toggle();
		$("#register").toggle();
		$("#signin").toggle();
		$("#signup").toggle();
	})

	$("#phoneNumber").keyup(checkphoneNum);
	$("#password").keyup(checkPwd);
	$("#pNumber").keyup(checkpNum);
	$("#validNum").keyup(checkValid);
	
	$("#GetvalidNum").click(function(){
		checkpNum();
		if(checkpNum()==true){
			var phoneNumber = $("#pNumber").val();
			$.post({
				url:"http://localhost:8080/group/userServlet.do",
			    data:{
			    	flag:"getValidNum",
			    	phoneNumber:phoneNumber
			    },
			    success:function(mess){
			    	
			    },
			})
		}
	})
})

function checkphoneNum() {
	// 获取手机号码
	var phoneNumber = $("#phoneNumber").val();
	if (phoneNumber == "") {
		$(".error-phone").html("请输入手机号码！");
		return false;
	} else {
		if (phoneNumber.length != 11) {
			$(".error-phone").html("请输入正确的手机号码");
			return false;
		} else {
			$(".error-phone").html("");
			return true;
		}
	}
}

function checkpNum() {
	// 获取手机号码
	var phoneNumber = $("#pNumber").val();
	if (phoneNumber == "") {
		$(".re-error-phone").html("请输入手机号码！");
		return false;
	} else {
		if (phoneNumber.length != 11) {
			$(".re-error-phone").html("请输入正确的手机号码");
			return false;
		} else {
			$(".re-error-phone").html("");
			return true;
		}
	}
}

function checkValid() {
	// 获取手机号码
	var validNum = $("#validNum").val();
	if (validNum == "") {
		$(".re-error-valid").html("请输入验证码！");
		return false;
	} else {
		$(".re-error-valid").html("");
		return true;
	}
}

function checkPwd() {
	var password = $("#password").val();
	if (password == "") {
		$(".error-password").html("密码不能为空");
		return false;
	} else {
		if (password.length < 6) {
			$(".error-password").html("密码位数不能少于6位");
			return false;
		} else {
			$(".error-password").html("");
			return true;
		}
	}

}
function checkLoginForm(form) {
	var flag = true;
	if (checkphoneNum() == false) {
		flag = false;
	}
	if (checkPwd() == false) {
		flag = false;
	}
	return flag;
}

function checkReForm(form) {
	var flag = true;
	if (checkpNum() == false) {
		flag = false;
	}
	if (checkValid() == false) {
		flag = false;
	}
	return flag;
}


	
