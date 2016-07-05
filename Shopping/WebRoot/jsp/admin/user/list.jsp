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
		<th>用户id</th>
		<th>用户名</th>
		<th>密码</th>
		<th>角色</th>
		<th>删除</th>
	</tr>
	
	<c:forEach items="${userList}" var="o">
	<tr>
		<td>${o.id }</td>
		<td>${o.username}</td>
		<td>${o.password}</td>
		<td>${o.role.rolename}</td>
		<td><button onclick="javascript:location.href='user.do?a=delete&id=${o.id}'">删除</button></td>
	</tr>
	</c:forEach>

</table>



</body>
</html>