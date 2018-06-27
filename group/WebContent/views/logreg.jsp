<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>登陆</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/link.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/logreg.js"></script>
</head>
<body>
	<div>
		<div class="header" id="header">
			<h2>欢迎登录</h2>
			<div>
				<button id="signin">手机快捷登录或注册go</button>
				<button id="signup">账号密码登录go</button>
			</div>
		</div>

		<div class="group1">
			<div class="loginform" id="login">
				<div class="header-item">
					<h3>账号密码登录</h3>
				</div>
				<form id="loginForm" action="/group/userServlet.do?flag=loginByPassword" method="post"
					onsubmit="return chenkLoginForm(this)">
					
					<div class="error">
						<p class="error-phone"></p>
					</div>
					<div>
						<input type="text" name="phoneNumber" id="phoneNumber"
							placeholder="请输入手机号码" />
					</div>
					<div class="error">
						<p class="error-password"></p>
					</div>
					<div>
						<input type="password" name="password" id="password"
							placeholder="请输入密码" />
					</div>
					<c:if test="${!empty perror}"> 
					<div class="error">
						<p>${perror}</p>
					</div>
					</c:if>
					<div class="button-login">
						<input type="submit" value="登录" id="loginbutton" />
					</div>
				</form>
			</div>
		</div>
		<div class="group2">
			<div class="registerform" id="register">
				<div class="header-item">
					<h3>手机快捷登录或注册</h3>
				</div>
				<form id="registerForm" action="/group/userServlet.do?flag=login" method="post"
					onsubmit="return checkReForm(this)">
					<div class="error">
						<p class="re-error-phone"></p>
					</div>
					<div>
						<input type="text" name="phoneNumber" id="pNumber"
							placeholder="请输入手机号码" />
					</div>
					<div class="error">
						<p class="re-error-valid"></p>
					</div>
					<div>
						<input type="text" name="validNum" id="validNum"
							placeholder="请输入验证码" /><input type="button" name="GetvalidNum"
							id="GetvalidNum" value="获取验证码" />
					</div>
					<c:if test="${!empty error}"> 
					<div class="error">
						<p>${error}</p>
					</div>
					</c:if>
					<div class="button-item" id="button-item">
						<input type="submit" value="立即登录" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
