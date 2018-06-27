<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/nav.js"></script>
</head>
<body>
	<div class="nav">
		<div class="nav-head">
			<div class="nav-head-left">
				<ul>
					<li id="allHouse"><a href="#">全部租房</a></li>
					<li id="subwayHouse"><a href="#">地铁租房</a></li>
				</ul>
			</div>
			<div class="nav-head-right">真实房源，假一赔百元，不封顶！</div>
		</div>
		<div class="nav-middle">
			<div class="region">
				<span>区域:</span>
				<ul>
					<li><span>不限</span></li>
					<li><span>鼓楼</span></li>
					<li><span>建邺</span></li>
					<li><span>秦淮</span></li>
					<li><span>玄武</span></li>
					<li><span>雨花台</span></li>
					<li><span>栖霞</span></li>
					<li><span>江宁</span></li>
					<li><span>浦口</span></li>
					<li><span>六合</span></li>
					<li><span>溧水</span></li>
					<li><span>高淳</span></li>
				</ul>
			</div>
			<div class="subway">
				<span>地铁:</span>
				<ul>
					<li><span>不限</span></li>
					<li><span>1号线</span></li>
					<li><span>2号线</span></li>
					<li><span>3号线</span></li>
					<li><span>4号线</span></li>
					<li><span>10号线</span></li>
					<li><span>S1机场线</span></li>
					<li><span>S3号线</span></li>
					<li><span>S8号线</span></li>
				</ul>
			</div>
			<div class="rent">
				<span>租金:</span>
				<ul>
					<li><span>不限</span></li>
					<li><span>0-1000元</span></li>
					<li><span>1000-1500元</span></li>
					<li><span>1500-2000元</span></li>
					<li><span>2000-3000元</span></li>
					<li><span>3000元以上</span></li>
					<li><input type="text" class="startPrice" value="" /></li>
					<li>-</li>
					<li><input type="text" class="endPrice" value="" /></li>
					<li>元</li>
					<li><input type="button" class="searchByPrice" value="确定"/></li>
				</ul>
			</div>
			<div class="area">
				<span>面积:</span>
				<ul> 
					<li><span>不限</span></li>
					<li><span>0-50平</span></li>
					<li><span>50-70平</span></li>
					<li><span>70-90平</span></li>
					<li><span>90-110平</span></li>
					<li><span>110-130平</span></li>
					<li><span>130-150平</span></li>
					<li><span>150-200平</span></li>
					<li><span>200平以上</span></li>
					<li><input type="text" class="startArea"/></li>
					<li>-</li>
					<li><input type="text" class="endArea"/></li>
					<li>平</li>
					<li><input type="button" class="searchByArea" value="确定"/></li>
				</ul>
			</div>
			<div class="house-type">
				<span>房型:</span>
				<ul>
					<li><span>不限</span></li>
					<li><span>1室</span></li>
					<li><span>2室</span></li>
					<li><span>3室</span></li>
					<li><span>4室</span></li>
					<li><span>4室以上</span></li>
				</ul>
			</div>
		</div>

	</div>
</body>
</html>