<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>头部</title>
<base>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/head.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
</head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/head.js"></script>
</head>
<body>
	<div class="head">
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
			<c:if test="${user == null}">
				<div class="head_right">
					<a href="${pageContext.request.contextPath}/views/logreg.jsp">登录<span>|</span>注册
					</a>
				</div>
			</c:if>
			<c:if test="${user != null }">
				<div class="head_right">
					欢迎<c:if test="${user.name != null}">
					${user.name} 
					</c:if>
					<c:if test="${user.name == null}">
					${user.phoneNumber} 
					</c:if> <span><a
						href="views/changUser.jsp">修改资料</a></span><span><a
						href="userServlet.do?flag=showPHouse">已发布房源</a></span> <span><a
						href="userServlet.do?flag=validUser">退出登录</a></span>
				</div>
			</c:if>
		</div>
	</div>
	<div class="head-buttom">
		<div class="head-search">
			<div>
				<span>租房:</span><input type="text" value="请输入房源名称" id="houseName" />
				<input type="submit" value="搜索" id="searchButton" />
			</div>
		</div>
	</div>

</body>
</html>