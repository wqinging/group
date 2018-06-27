<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>已发布房源</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/showPHouse.css" />

</head>
<body>
	<div class="p-head">
		<div class="content">
			<div class="logo">
				<!-- <img src="#"> -->
			</div>
			<div class="head_nav">
				<ul>
					<li><a href="#">二手房</a></li>
					<li><a href="#">新房</a></li>
					<li class="tenement"><a href="houseServlet.do">租房</a></li>
					<li><a href="#">海外</a></li>
					<li><a href="#">小区</a></li>
					<li><a href="#">经纪人</a></li>
					<li><a href="#">指南</a></li>
					<li><a href="#">房价</a></li>
					<li><a href="#">工具</a></li>
					<li><a href="userServlet.do?flag=publicHouse"
						class="relhouse">发布房源</a></li>
				</ul>
			</div>
			<c:if test="${user == null }">
				<div class="head_right">
					<a href="${pageContext.request.contextPath}/views/logreg.jsp">登录<span>|</span>注册
					</a>
				</div>
			</c:if>
			<c:if test="${user != null }">
				<div class="head_right">
					欢迎
					<c:if test="${user.name != null}">
					${user.name} 
					</c:if>
					<c:if test="${user.name == null}">
					${user.phoneNumber} 
					</c:if>
					<span><a
						href="views/changUser.jsp">修改资料</a></span><span><a
						href="userServlet.do?flag=showPHouse">已发布房源</a></span> <span><a
						href="userServlet.do?flag=validUser">退出登录</a></span>
				</div>
			</c:if>
		</div>
	</div>
	<div class="publided-house">
		<div class="title">
			<h2>已发布的房源信息</h2>
		</div>
		<div class="details">
			<div class="infos">
				<h5>房源信息</h5>
			</div>
			<div class="status">
				<h5>价格</h5>
			</div>
			<div class="do">
				<h5>操作</h5>
			</div>
		</div>
		<c:forEach items="${list}" var="list">
		<div class="details">
			<div class="infos">${list.city}${list.area}${list.build}${list.unit}${list.signum}</div>
			<div class="status">${list.price}</div>
			<div class="do">
				<a href="userServlet.do?flag=deleteph&id=${list.id}">取消委托</a>
			</div>
		</div>
		</c:forEach>
	</div>


</body>
</html>