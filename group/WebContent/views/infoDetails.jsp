<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/css/infoDetails.css">
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=y0rWkAszyg5pxM3qR3qKb84UP996FSiK"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/infoDetails.js"></script>
<title>房源详情</title>
</head>
<body>
	<div class="headPart">
		<%@include file="head.jsp"%>
	</div>
	<c:if test="${!empty houseDemo}">
		<div class="main">
			<div class="main-top">
				<p>
					<span>${houseDemo.name}</span><span>${houseDemo.houseType}</span><span>${houseDemo.price}元/月</span>
				</p>
			</div>
			<div class="main-buttom">
				<div class="imageShow">
					<img
						src="${pageContext.request.contextPath}/images/${houseDemo.image}" />
				</div>

				<div class="infoShow">
					<div class="priceShow">
						<p>
							<span>${houseDemo.price}</span>元/月
						</p>
					</div>
					<div class="otherShow">
						<div class="otherShow-top">
							<div>
								<p>
									面积:<span class="data">${houseDemo.area}</span>
								</p>
								<p>
									楼层:<span class="data">${houseDemo.floor}</span>
								</p>
							</div>
							<div>
								<p>
									房屋户型:<span class="data">${houseDemo.houseType}</span>
								</p>
								<p>
									房屋朝向:<span class="data">${houseDemo.ori}</span>
								</p>
							</div>
						</div>
						<div class="otherShow-buttom">
							<p>
								小区:<span class="data">${houseDemo.village}</span>
							</p>
							<p>
								位置:<span class="data">${houseDemo.address}</span>
							</p>
							<p>
								时间:<span class="data">${houseDemo.bulidTime}</span>
							</p>
						</div>

					</div>
					<div class="rentInfos">
						<div class="renterImage">
							<img
								src="${pageContext.request.contextPath}/images/agent/${houseDemo.agent.getImage()}" />
						</div>
						<div class="otherInfos">
							<p>${houseDemo.agent.getName()}</p>
							<p>
								预约联系电话:<span>${houseDemo.agent.getPhoneNumber()}</span>
							</p>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="map">
			<div class="map-title">
				<p>周边地区</p>
			</div>
			<div id="allmap"></div>
		</div>
	</c:if>
</body>
</html>