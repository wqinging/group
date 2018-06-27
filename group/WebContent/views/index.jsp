<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>首页</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/index.css" />
<link rel="stylesheet" style="text/css"
	href="${pageContext.request.contextPath}/css/info.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/index.js"></script>
</head>
<body>
	<div class="headPart">
		<%@include file="head.jsp"%>
	</div>
	<div class="navPart">
		<%@include file="nav.jsp"%>
	</div>
	<div class="houseinfoPart"></div>
</body>
</html>