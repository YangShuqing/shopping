<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="public/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" charset="utf-8" src="jsp/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="jsp/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="jsp/ueditor/lang/zh-cn/zh-cn.js"></script>
<title>Insert title here</title>
</head>
<body>
<form action="type.do?a=save1" method="POST">
<table width="1024" border="0" align="center">
<tr>
	<td align="right">分类名称:</td>
	<td><input name="typename"/></td>
</tr>
<tr>
	<td align="right">上级分类:</td>
	<td>
	<select name="pid">
		<option value="0">请选择...</option>
		<c:forEach items="${list}" var="g">
			<option value="${g.id}">${g.typename}</option>
		</c:forEach>
	</select>
	</td>
</tr>
<tr>
	<td></td>
	<td><input type="submit" value="添加分类"/></td>
</tr>
</table>
</form>


</body>
</html>
