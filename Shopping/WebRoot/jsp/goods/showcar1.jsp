<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="http://localhost:8080/shopping/" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/order.js"></script>
</head>
<body>
<c:forEach items="${sessionScope.shopcar}" var="g">	
	<input type="checkbox" value="${g.gid}"/><a href="goods.do?a=show&id=${g.gid}">${g.gname}</a>
	${g.buytime} 
	<br/>
</c:forEach>
<button id="btn">全选/反选</button>
<a href="javascript:check('order.do?a=chkorder')">结账</a>
</body>
</html>