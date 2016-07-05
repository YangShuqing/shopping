<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirm Order</title>
</head>
<body>
地址：${sessionScope.user.address}

商品：
<c:forEach items="${sessionScope.shopcar}" var="g" varStatus="vs">
${g.gname},${g.goodspic}<br/>
</c:forEach>

<hr/>
<table width="700" border="1"> 
	<tr>
		<th>订单编号</th>
		<th>用户id</th>
		<th>商品id</th>
		<th>数量</th>
		<th>时间</th>
		<th>状态</th>
		<th>处理</th>
	</tr>
	
	<c:forEach items="${orderlist}" var="o">
	<tr>
		<td>${o.id }</td>
		<td>${o.uid}</td>
		<td>${o.gid}</td>
		<td>${o.total}</td>
		<td>${o.buytime}</td>
		<td>${o.status}</td>
		<td><button onclick="javascript:location.href='order.do?a=chko&id=${o.id}'">处理</button></td>
	</tr>
	</c:forEach>

</table>



</body>
</html>