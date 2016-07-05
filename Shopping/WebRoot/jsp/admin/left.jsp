<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>无标题文档</title>
</head>

<body>
<a href="goods.do" target="_black">商城首页</a><br/>
<hr/>
<a href="goods.do?a=add" target="main">添加商品</a><br/>
<a href="goods.do?a=list" target="_black">查看商品</a><br/>
<a href="admin.do?a=orderlist" target="main">订单处理</a><br/>
<hr/>
<a href="type.do?a=add" target="main">添加分类</a><br/>
<a href="type.do?a=list" target="main">分类管理</a><br/>
<hr/>
<a href="user.do?a=add" target="main">添加用户</a><br/>
<a href="user.do?a=list" target="main">用户管理</a><br/>
</body>
</html>
