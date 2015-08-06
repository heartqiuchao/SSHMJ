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
	<!-- DataTables CSS -->
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/datatables/css/jquery.dataTables.min.css">
	<!--  jQuery-->
	<script type="text/javascript" charset="utf8" src="<%=path%>/css/datatables/js/jquery.js"></script>
	<!-- DataTables -->
	<script type="text/javascript" charset="utf8" src="<%=path%>/css/datatables/js/jquery.dataTables.js"></script>
	
	<title>角色列表</title>
	<script type="text/javascript">
		var data1=[];
		$(document).ready(function(){
			$.ajax({
				type : "post",
				asyns : false,//同步执行 
				url : "common_readData.action",
				data : {
					"entity": "SystemUser"//必填
				},
				dataType : "json", //返回数据形式为json
				success : function(result) {	//请求成功
					data1=result;
					$('#userlisttable').dataTable({
						/* "bServerSide": true, */
						"sPagingType":   "full_numbers",
						"oLanguage": {
							"decimal":",",  
				            "thousands":".", 
				           	"sProcessing":"处理中...", 
				           	"sLengthMenu":"显示_MENU_项结果",
				           	"sZeroRecords":"没有匹配结果",
				           	"sInfo":"显示第_START_至_END_项结果，共_TOTAL_项",
				           	"sInfoEmpty":"显示第0至0项结果，共0项",
				           	"sInfoFiltered":"(由_MAX_项结果过滤)",
				           	"sInfoPostFix":"",
				           	"sSearch":"搜索:",
				           	"sUrl":"",
				           	"sEmptyTable":"表中数据为空",
				           	"sLoadingRecords":"载入中...",
				           	"sInfoThousands":",",
			            	"oPaginate":{ "sFirst":"首页","sPrevious":"上页","sNext":"下页","sLast":"末页"}, 
			            	"oAria":{ "sSortAscending":":以升序排列此列","sSortDescending":":以降序排列此列"}
				          },
				          "dom": "<'row'<'col-xs-2'l><'#mytool.col-xs-4'><'col-xs-6'f>r>" +   //dom定位，即分页搜索功能位置
		                  "t" +
		                  "<'row'<'col-xs-6'i><'col-xs-6'p>>", 
				         data:data1,
				         columns: [
				                   {data: 'id'},
				                   {data: 'name'},
				                   {data: 'account'},
				                   {data: 'userrolename'},
				                   {data: 'usersex'},
				                   {data: 'userage'},
				                   {data: 'userkey'},
				                   {data: 'userphone'},
				            ]
					});
				},
				error : function(errorMsg) {	//请求失败
					alert("角色列表请求数据失败...");
				}
				});
			
		});
	</script>
</head>
<body>
	<div class="container">
		<a href="user_manageUser.action">添加用户</a>
		<table id="userlisttable" class="dispaly">
			<thead>
			<tr>
				<th>ID</th>
				<th>用户名</th>
				<th>帐户名</th>
				<th>用户角色</th>
				<th>性别</th>
				<th>年龄</th>
				<th>身份证</th>
				<th>联系方式</th>
			</tr>
			</thead>
			<tfoot>
			<tr>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			</tfoot>
			<!-- TBODY是必须的 -->
			<tbody>
			</tbody>
		</table>
	</div>
</body>
</html>