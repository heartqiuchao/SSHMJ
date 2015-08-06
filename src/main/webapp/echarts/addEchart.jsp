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
	<form id="addechartform" name="addechartform" action="test_EChart_addEchartData.action" method="post">
	
		<button type="submit" class="btn">添加</button>
	</form>
</body>
</html>