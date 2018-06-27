$(function() {
	$(".head_right").hover(function() {
		$(".head_right ul").css("display", "block");
	}, function() {
		$(".head_right ul").css("display", "none");
	})

	$("#searchButton").click(function(){
		$.post({
			url:"houseServlet.do",
			data:{
				flag : "queryByName",
				name:$("#houseName").val()
			},
			dataType:"json",
			success:function(msg){
				var strMsg = createHouseInfo(msg);
				$(".houseinfoPart").html(strMsg);
			}
		})
	})
	
})

