$(function() {
	
	$(".rent input[type='text']").keyup(function(){
		var flag = "true";
		var startPrice = $(".rent .startPrice").val();
		var endPrice = $(".rent .endPrice").val();
		if(startPrice == ""){
			flag = "false";
		}
		if(endPrice ==""){
			flag = "false";
		}
		if(flag=="true"){
			$(".rent .searchByPrice").css("display","inherit");
		}else{
			$(".rent .searchByPrice").css("display","none");
		}
	})
		$(".area input[type='text']").keyup(function(){
		var flag = "true";
		var startArea = $(".area .startArea").val();
		var endArea = $(".area .endArea").val();
		if(startArea == ""){
			flag = "false";
		}
		if(endArea ==""){
			flag = "false";
		}
		if(flag=="true"){
			$(".area .searchByArea").css("display","inherit");
		}else{
			$(".area .searchByArea").css("display","none");
		}
	})
	
	$("#subwayHouse").click(function() {
		$(this).css("background-color", "#39AC6A");
		$(this).children("a").css("color", "#FFFFFF");
		$(this).prev().css("background-color", "#F9F9F9");
		$(this).prev().children("a").css("color", "#551A8B");
		$(".subway").css("display", "flex");
		$(".region").css("display", "none");
		$(".nav-middle .region").children().children().children().removeClass("flag");
		$(".nav-middle .region").children().children().children().css("color","#333333");
		$(".nav-middle .region").children().children().children("span:first").css("color","#39AC6A");
	})

	$("#allHouse").click(function() {
		$(this).css("background-color", "#39AC6A");
		$(this).children("a").css("color", "#FFFFFF");
		$(this).next().css("background-color", "#F9F9F9");
		$(this).next().children("a").css("color", "#551A8B");
		$(".region").css("display", "flex");
		$(".subway").css("display", "none");
		$(".nav-middle .subway").children().children().children().removeClass("flag");
		$(".nav-middle .subway").children().children().children().css("color","#333333");
		$(".nav-middle .subway").children().children().children("span:first").css("color","#39AC6A");
	})
	$.ajax({
		type : "post",
		url : "houseServlet.do",
		data : {
			flag : "query",
			regiArg:"",
			subArg:"" ,
			rentArg:"",
			areaArg:"",
			typeArg:"",
		},
		dataType : "json",
		success : function(msg) {
			var strMsg = createHouseInfo(msg);
			$(".houseinfoPart").html(strMsg);
		},
		error : function() {
			$(".houseinfoPart").html("error");
		},
	})


	var allspans = $(".nav-middle div ul li span");
	
	allspans.click(function() {
		$(this).css("color", "#39AC6A");
		$(this).addClass("flag");
		$(this).parent().siblings().children().css("color", "#333333");
		$(this).parent().siblings().children().removeClass("flag");
		
		var regiArg = $(".region").children().children().children("[class=flag]").text();
		
		var subArg = $(".subway").children().children().children("[class=flag]").text();
		var rentArg = $(".rent").children().children().children("[class=flag]").text();
		var areaArg = $(".area").children().children().children("[class=flag]").text();
		var typeArg = $(".house-type").children().children().children("[class=flag]").text();
		
		$.post({
			url:"houseServlet.do",
			data:{
				flag : "query",
				regiArg:regiArg,
				subArg:subArg,
				rentArg:rentArg,
				areaArg:areaArg,
				typeArg:typeArg
			},
			dataType:"json",
			success:function(msg){
				var strMsg = createHouseInfo(msg);
				$(".houseinfoPart").html(strMsg);
			}
		})
	})
	
	$(".rent .searchByPrice").click(function(){
		var regiArg = $(".region").children().children().children("[class=flag]").text();
		var subArg = $(".subway").children().children().children("[class=flag]").text();
		var areaArg = $(".area").children().children().children("[class=flag]").text();
		var typeArg = $(".house-type").children().children().children("[class=flag]").text();
		
		var startPrice = $(".rent .startPrice").val();
		var line = $(".rent .endPrice").parent().prev().text();
		var endPrice = $(".rent .endPrice").val();
		var yuan = $(".rent .endPrice").parent().next().text();
		var rentArg = startPrice+line+endPrice+yuan;
		$.post({
			url:"houseServlet.do",
			data:{
				flag : "query",
				regiArg:regiArg,
				subArg:subArg,
				rentArg:rentArg,
				areaArg:areaArg,
				typeArg:typeArg
			},
			dataType:"json",
			success:function(msg){
				var strMsg = createHouseInfo(msg);
				$(".houseinfoPart").html(strMsg);
			}
		})

	})
	
	$(".area .searchByArea").click(function(){
		var regiArg = $(".region").children().children().children("[class=flag]").text();
		var subArg = $(".subway").children().children().children("[class=flag]").text();
		var rentArg = $(".rent").children().children().children("[class=flag]").text();
		var typeArg = $(".house-type").children().children().children("[class=flag]").text();
		
		var startArea = $(".area .startArea").val();
		var line = $(".area .endArea").parent().prev().text();
		var endArea = $(".area .endArea").val();
		var ping = $(".area .endArea").parent().next().text();
		var areaArg = startArea+line+endArea+ping;
		$.post({
			url:"houseServlet.do",
			data:{
				flag : "query",
				regiArg:regiArg,
				subArg:subArg,
				rentArg:rentArg,
				areaArg:areaArg,
				typeArg:typeArg
			},
			dataType:"json",
			success:function(msg){
				var strMsg = createHouseInfo(msg);
				$(".houseinfoPart").html(strMsg);
			}
		})

	})
	
	
	

})






function createHouseInfo(msg) {
	var strMsg = "<div class='info-head'>";
	
	strMsg += "<div class='info-head-left'>实景图模式</div>"
			+ "<div class='info-head-right'>" + "<h2>" + "<span>共有</span>"
			+ "<span class='house-amount'>" + msg.totalAmount + "</span>"
			+ "<span>套南京在租房源</span>" + "</h2>" + "</div>" + "</div>" + "</div>";

	if (msg.totalAmount == 0) {
		strMsg += "<div class='no-info'><p><p>呣..没有找到相关内容，请您换个条件试试吧~<p></div>";
	} else {

		strMsg += "<div class='info'>";
		
		$.each(msg.houseData, function(i) {
			strMsg += "<div class='info-main'>"
					+ "<div class='info-main-image'>" + "<img src='images/"
					+ msg.houseData[i].image
					+ "'/>"
					+ "</div>"
					+ "<div class='info-main-infos'>"
					+ "<div><h2><a href='houseServlet.do?flag=queryDetails&name="+msg.houseData[i].name+"' target=_black><span>"
					+ msg.houseData[i].name
					+ "</span><span>"
					+ msg.houseData[i].houseType
					+ "</span><span>"
					+ msg.houseData[i].price
					+ "元"
					+ "</span></a></h2></div><div><span>"
					+ msg.houseData[i].village
					+ "</span><span>"
					+ msg.houseData[i].houseType
					+ "</span><span>"
					+ msg.houseData[i].area
					+ "平米"
					+ "</span><span>"
					+ msg.houseData[i].ori
					+ "</span></div><div><span>"
					+ msg.houseData[i].rentType
					+ "</span><span>/</span><span>"
					+ msg.houseData[i].floor
					+ "</span><span>/</span><span>"
					+ msg.houseData[i].bulidTime
					+ "</span></div><div><span>随时看房</span></div></div>"
					+ "<div class='info-main-price'><span>"
					+ msg.houseData[i].price + "</span>元/月" + "</div></div>";
		});
		strMsg += "</div>"

		var totalPageCount = Math.ceil(msg.totalAmount / 8);
		
		if (totalPageCount > 1) {

			strMsg += `
			<div class='paging'>
				<p>
					<a href="javascript:void(0);" onclick="paging('${msg.flag}', '${msg.regiArg}', '${msg.rentArg}', '${msg.areaArg}','${msg.subArg}','${msg.typeArg}', '1')">首页</a>
				</p>`
				if(msg.currentPage<=1){
					strMsg +=`
					<p>
					上一页
					</p>
                         `
				}else{
					strMsg +=
						`<p>
					       <a href="javascript:void(0);" onclick="paging('${msg.flag}', '${msg.regiArg}', '${msg.rentArg}', '${msg.areaArg}','${msg.subArg}','${msg.typeArg}','${msg.currentPage - 1}')">上一页</a>
				         </p>
				        `
				}
			
			    strMsg +=
			    `<p>当前${msg.currentPage}/${totalPageCount}页</p>`
			    	
			    if(msg.currentPage>=totalPageCount){
			    	strMsg +=
			    		`
			    		<p>下一页</p>
			    		`
			    }else{
			    	strMsg +=
			    		`
			    		<p><a href="javascript:void(0);" onclick="paging('${msg.flag}','${msg.regiArg}', '${msg.rentArg}', '${msg.areaArg}','${msg.subArg}','${msg.typeArg}','${msg.currentPage + 1}')">下一页</a></p>
			    		`
			    } 
			    
			   strMsg += `
				<p><a href="javascript:void(0);" onclick="paging('${msg.flag}', '${msg.regiArg}', '${msg.rentArg}', '${msg.areaArg}','${msg.subArg}','${msg.typeArg}', '${totalPageCount}')">尾页</a></p>
			    </div>
			`;
			
		}

	}

	return strMsg;
}

function paging(flag, regiArg, rentArg, areaArg,subArg,typeArg,pageNum) {
	$.post({
		url : "houseServlet.do",
		data : {
			currentPage:pageNum,
			flag : flag,
			regiArg:regiArg,
			subArg:subArg ,
			rentArg:rentArg,
			areaArg:areaArg,
			typeArg:typeArg,
		},
		dataType : "json",
		success : function(msg) {
			var strMsg = createHouseInfo(msg);
			$(".houseinfoPart").html(strMsg);
		}
	})
}



