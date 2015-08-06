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
	<title>Main</title>
	
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
				{"id":1, "pId":0, "name":"系统维护"},
			    {"id":11, "pId":1, "name":"系统角色","url":"role_listRole.action", "target":"rightframe"},
			    {"id":12, "pId":1, "name":"系统用户","url":"http://baidu.com", "target":"rightframe"},
			    {"id":13, "pId":1, "name":"系统菜单","url":"http://www.sina.com.cn", "target":"rightframe"}
		   ];
		$(document).ready(function(){
			zTreeObj = $.fn.zTree.init($("#tree"), setting, zTreeNodes);
		});		
	</script>
</head>				
<body>
	<div class="container-fluid">
		<div id="lbox" >
		<div id="bs_left">
			<ul id="tree" class="ztree"></ul>
		</div>
		</div>
		<div id="rbox" >
		<div id="bs_right">
			<IFRAME scrolling="auto" width="100%" height=600 frameBorder=0 id=rightframe name=rightframe src=""></IFRAME>
		</div>
		</div>
	</div>
</body>
</html>