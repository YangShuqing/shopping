<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="goods.do?a=save" method="POST">
<table width="600" border="0" align="center">
<tr>
	<td align="right">商品名称:</td>
	<td><input name="goodsname"/></td>
</tr>
<tr>
	<td align="right">商品类型:</td>
	<td>
	<select name="goodstype">
		<option>请选择...</option>
		<c:forEach items="${list}" var="g">
			<option value="${g.id}">${g.typename}</option>
		</c:forEach>
	</select>
	</td>
</tr>
<tr>
	<td align="right">商品数量:</td>
	<td><input name="goodscount"/></td>
</tr>
<tr>
	<td align="right">商品单价:</td>
	<td><input name="price"/></td>
</tr>
<tr>
	<td align="right">商品图片:</td>
	<td><input name="goodspic"/></td>
</tr>
<tr>
	<td align="right">商品描述:</td>
	<td><textarea name="goodsdesc" rows="5" cols="30"></textarea></td>
</tr>
<tr>
	<td></td>
	<td><input type="submit" value="添加商品"/></td>
</tr>
</table>


</form>
</body>
</html>