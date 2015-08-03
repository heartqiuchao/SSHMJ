<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath();
%>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Bootstrap核心CSS文件 -->
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap/css/bootstrap.min.css">
	<!-- jQuery核心文件，在bootstrap.min.js之前引入 -->
	<script type="text/javascript" src="<%=path%>/js/jquery/jquery-2.1.4.min.js"></script>
	<!-- Bootstrap核心JavaScript文件 -->
	<script type="text/javascript" src="<%=path%>/css/bootstrap/js/bootstrap.min.js"></script>
	<!--  ztree核心JavaScript文件 -->
	<script type="text/javascript" src="<%=path%>/js/ztree/jquery.ztree.core-3.5.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/ztree/jquery.ztree.excheck-3.5.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/ztree/jquery.ztree.exedit-3.5.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/ztree/jquery.ztree.exhide-3.5.min.js"></script>
	<!-- ztree核心CSS文件 -->
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/ztree/zTreeStyle.css">
	<title>Login</title>
	
	<script type="text/javascript">
		var zTreeObj;
		var setting = {
			async: {
				enable:true,	//是否异步加载
				url:'',
				autoParam:["id","name"]
			},	
			callback: {},
			check: {
				enable:false		//是否显示checkbox
				},
			view: {
				selectedMulti: false,		//是否允许多选
				showIcon:true,
				showLine:true
				},
			data: {
				simpleData: {
					enable: true,
					idKey: "id",
					pIdKey: "pId",
					rootPId:0
				}
			}
		};	
		var zTreeNodes =[
				{"id":1, "pId":0, "name":"网站导航"},
			    {"id":11, "pId":1, "name":"google","url":"http://g.cn", "target":"_blank"},
			    {"id":12, "pId":1, "name":"baidu","url":"http://baidu.com", "target":"_blank"},
			    {"id":121, "pId":12, "name":"sina","url":"http://www.sina.com.cn", "target":"_blank"}
		   ];
		$(document).ready(function(){
			zTreeObj = $.fn.zTree.init($("#tree"), setting, zTreeNodes);
		});		
	</script>
</head>				
<body>
	<ul id="tree" class="ztree" style="width:230px; overflow:auto;"></ul>
	
</body>
</html>