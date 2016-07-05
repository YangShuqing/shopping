<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="container">
		<div class="header">当前登陆会员：
		<c:if test="${sessionScope.user.username==null}">
		<a href="user.do?a=login">请登录</a></c:if>
		${sessionScope.user.username}
		&nbsp;<a href="user.do?a=exit">退出</a>	
		</div>
		<div class="menu">
			<ul>
				<li>首页</li>
				<li><a href="goods.do?a=typeList&id=4">计算机</a></li>
				<li><a href="goods.do?a=typeList&id=5">男装</a></li>
				<li><a href="user.do?a=login">会员登录</a></li>
				<li>注册会员</li>
				<li><a href="goods.do?a=showcar">查看购物车</a></li>
				<li><a href="admin.do?a=login">后台管理</a></li>
			</ul>
		</div>
		<div class="main">
			<div class="computer">
				<ul>
					<c:forEach items="${computers}" var="v">
					<li><span><a href="goods.do?a=show&id=${v.id}" target="_blank">${v.goodsname}</a></span><span style="float:right;margin-right:40px;">${v.price }</span></li>
					</c:forEach>
				</ul>
			</div>
			<div class="ele">
			ele
			</div>
			<div style="clear:both;"></div>
		</div>
		<div class="footer"></div>
	</div>
</body>
</html>