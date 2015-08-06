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
<title>添加用户</title>
</head>
<body>
	<div class="container">
	<div align="center" width=100>
		<form class="form-signin" role="form" action="user_addUser.action" method="post">
			<h2 class="form-signin-heading">添加用户</h2>
			<input type="text" class="input-block-level" name="accountname" placeholder="账号" required><br>
			<input type="text" class="input-block-level" name="username" placeholder="用户显示名" required autofocus><br>
			<input type="password" class="input-block-level" name="password" placeholder="密码" required><br>
			<input type="password" class="input-block-level" name="confirmpasswd" placeholder="确认密码" required><br>
			<input type="text" class="input-block-level" name="userage" placeholder="你的年龄" required><br>
			<input type="text" class="input-block-level" name="userkey" placeholder="身份证号" required><br>
			<input type="text" class="input-block-level" name="userphone" placeholder="联系方式" required><br>
			<select class="selectpicker" name="usersex">
    			<option value="男" selected="selected">男</option>
   				<option value="女">女</option>
  			</select>
  			<select class="selectpicker" name="userrolename">
  				<option value="1">超级管理员</option>
    			<option value="2">管理员</option>
   				<option value="3" selected="selected">普通成员</option>
  			</select><br>
			<button class="btn btn-small btn-primary" type="submit">添加用户</button>
		</form>
		</div>
	</div>
</body>
</html>