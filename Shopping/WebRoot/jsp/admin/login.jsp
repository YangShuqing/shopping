<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<br/><br/><br/><br/>

	<center>
	<h3>电商系统-后台登录</h3>
	${sessionScope.errMsg}
	<form action="admin.do?a=checklogin" method="post">
	用户名:<input name="username"><br/>
	密　码:<input name="password"><br/>
	验证码:<input name="verify"><img src="admin.do?a=verifycode"/><br/>
	<input type="submit" value="登录">
	</form>
	</center>
</body>
</html>