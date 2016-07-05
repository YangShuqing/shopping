<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/shopping/"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="container">
		<div class="header"></div>
		<div class="menu">
			<ul>
				<li><a href="goods.do">首页</a></li>
				<li><a href="goods.do?a=typeList&id=1">电子产品</a></li>
				<li><a href="goods.do?a=typeList&id=2">智能硬件</a></li>
				<li>会员登录</li>
				<li>注册会员</li>
				<li><a href="admin.do?a=login">后台管理</a></li>
			</ul>
		</div>
		<div class="main">
<c:forEach items="${goods}" var="g">
	${g.goodsname},${g.price}<br/>
	
</c:forEach>
</div>
	<div class="footer"></div>
	</div>
</body>
</html>