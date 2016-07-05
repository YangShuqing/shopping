<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	当前登陆会员：${sessionScope.user.username}
</div>
<table width="600" border="0" align="center">
<tr>
	<td align="right">商品名称:</td>
	<td>${goods.goodsname}</td>
</tr>


<tr>
	<td align="right">商品单价:</td>
	<td>${goods.price}</td>
</tr>
<tr>
	<td align="right">商品图片:</td>
	<td>${goods.goodspic }</td>
</tr>
<tr>
	<td align="right">商品描述:</td>
	<td>${goods.goodsdesc}</td>
</tr>

</table>
<a href="goods.do?a=addcar&id=${goods.id}&gname=${goods.goodsname}">添加到购物车</a>
直接购买此商品

</body>
</html>