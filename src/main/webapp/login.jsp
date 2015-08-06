<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
String path = request.getContextPath();
%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap/css/bootstrap.css">
<title>Login</title>
</head>
<body>
	<div class="container">
		<form class="form-signin" role="form" action="login.action" method="post">
			<h2 class="form-signin-heading">登陆</h2>
			<input type="text" class="form-control" name="username" placeholder="user name" required autofocus>
			<input type="password" class="form-control" name="password" placeholder="password" required>
			<label class="checkbox">
				<input type="checkbox" value="remember-me">阅读用户协议
			</label> 
			<button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
		</form>
	</div>
</body>
</html>