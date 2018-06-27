<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//divD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.divd">
<html>
<head>
<title></title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pubHouse.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/pubHouse.js"></script>
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
				<a href="${pageContext.request.contextPath}/views/logreg.jsp">登录<span>|</span>注册</a>
			</div>
			</c:if>
			<c:if test="${user != null }">
				<div class="head_right">
					欢迎<c:if test="${user.name != null}">
					${user.name} 
					</c:if>
					<c:if test="${user.name == null}">
					${user.phoneNumber} 
					</c:if><span><a
						href="views/changUser.jsp">修改资料</a></span><span><a
						href="userServlet.do?flag=showPHouse">已发布房源</a></span> <span><a
						href="userServlet.do?flag=validUser">退出登录</a></span>
				</div>
			</c:if>
		</div>
	</div>
	<div class="public-main">
		<div class="form">
			<div class="title">发布出租房源</div>
			<form action="userServlet.do?flag=addPublicHouse" method="post"
				id="myHouse">
				<div class="formdata">
					<p>
						小区所在城市:<span><input type="text" name="city"
							placeholder="南京" readonly="readonly" /></span>
					</p>
					<p>
						小区:<span><input type="text" placeholder="请输入小区名"
							name="area" id="area" /></span>
					</p>
					<p>
						楼栋号:<span><input type="text" placeholder="楼栋号" name="build"
							id="build" /></span>
					</p>
					<p>
						单元号:<span><input type="text" placeholder="单元号" name="unit"
							id="unit" /></span>

					</p>
					<p>
						门牌号:<span><input type="text" placeholder="门牌号"
							name="signum" id="signum" /></span>
					</p>
					<p>
						期望租金:<span><input type="text" placeholder="请输入您期望的租出租金"
							name="price" id="price" />元/月 
					</p>
					<p>
						<span><input type="submit" value="提交委托" id="sutBtn" />
					</p>
				</div>
			</form>
		</div>
	</div>
</body>
</html>

