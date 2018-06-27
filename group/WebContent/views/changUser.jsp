<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>完善个人资料</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/changUser.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/changUser.js"></script>
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
					<li class="tenement"><a href="/group/houseServlet.do">租房</a></li>
					<li><a href="#">海外</a></li>
					<li><a href="#">小区</a></li>
					<li><a href="#">经纪人</a></li>
					<li><a href="#">指南</a></li>
					<li><a href="#">房价</a></li>
					<li><a href="#">工具</a></li>
					<li><a href="/group/userServlet.do?flag=publicHouse" 
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
						href="/group/views/changUser.jsp">修改资料</a></span><span><a
						href="/group/userServlet.do?flag=showPHouse">已发布房源</a></span> <span><a
						href="/group/userServlet.do?flag=validUser">退出登录</a></span>
				</div>
			</c:if>
		</div>
	</div>
	<div class="public-main">
		<div class="form">
			<div class="title">完善个人资料</div>
			<form action="/group/userServlet.do?flag=dochangUser" method="post" 
				id="myUser" onsubmit="return checkUserForm(this)">
				<div class="formdata">
					<p>
						名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;字:<span><input
							type="text" placeholder="请输入个人名称" name="name" id="name" /></span>
					</p>
					<p>
						密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:<span><input
							type="password" placeholder="请输入密码" name="password" id="password" /></span>
					</p>
					<p>
						确认密码:<span><input type="password" placeholder="请再次输入密码"
							name="re-password" id="re-password" /></span>
					</p>
					<p>
						<span><input type="submit" value="确认修改" id="sutBtn" />
					</p>
				</div>
			</form>
		</div>
	</div>
</body>
</html>