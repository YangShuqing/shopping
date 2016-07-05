<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
</head>
<body>

<table width="700" border="1"> 
	<tr>
		<th>分类id</th>
		<th>分类名称</th>
		<th>上级分类</th>
		<th>操作</th>
	</tr>
	
	<c:forEach items="${typeList}" var="o">
	<tr>
		<td>${o.id }</td>
		<td>${o.typename}</td>
		<td>${o.pid}</td>
		<td><button onclick="javascript:location.href='type.do?a=delete&id=${o.id}'">删除</button></td>
	</tr>
	</c:forEach>

</table>



</body>
</html>