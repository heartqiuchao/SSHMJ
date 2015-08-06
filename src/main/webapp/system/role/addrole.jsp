<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
String path = request.getContextPath();
%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- jQuery核心文件，在bootstrap.min.js之前引入 -->
	<script type="text/javascript" src="<%=path%>/js/jquery/jquery-2.1.4.min.js"></script>
	<!-- Bootstrap核心CSS文件 -->
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap/css/bootstrap.min.css">
<title>添加用户角色</title>
</head>
<body>
	<div class="container">
	<div align="center" width=100>
		<form class="form-signin" role="form" action="role_addRole.action" method="post">
			<h2 class="form-signin-heading">添加角色</h2>
			<input type="text" class="input-block-level" name="roleid" placeholder="角色ID" required><br>
			<input type="text" class="input-block-level" name="rolename" placeholder="角色名" required autofocus><br>
			<button class="btn btn-small btn-primary" type="submit">添加角色</button>
		</form>
		</div>
	</div>
</body>
</html>