<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- ECharts单文件引入 -->
<script src="js/dist/echarts.js"></script>
<script src="js/jquery/jquery-2.1.4.min.js"></script>
<title>EChats</title>
</head>
<body>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="height: 400px"></div>
	<script type="text/javascript">
		//全局变量	
		var arr1=[];
		var arr2=[];
		var myChart;
		$.ajax({
			type:"post",
			asyns: false,//同步执行 
			url:"common_readData.action",
			data:{},
			dataType:"json", //返回数据形式为json
			success:function(result){
				for(var i=0;i<result.length;i++){
                    console.log(result[i].name);
                    arr1.push(result[i].name);
                    arr2.push(result[i].num);
				}
				showEChart();
				console.log("arr1:"+arr1);
				console.log("arr2:"+arr2);
			},
			error:function(errorMsg) {
				alert("请求数据失败...");
			}
		})
		function showEChart() {
			//路径配置
			require.config({
				paths : {
					echarts : 'js/dist'
				}
			});
			//使用
			require(
			[ 
			  'echarts', 
			  'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
			], 
			function(ec) {
				// 基于准备好的dom，初始化echarts图表
				myChart = ec.init(document.getElementById('main'));
				/* myChart.showLoading({  
	                text : "图表数据正在努力加载..."  
	            });   */
				var option = {
					tooltip : {
						show : true
					},
					//图例
					legend : {
						data : [ '销量' ]
					},
					//X 坐标
					xAxis : [ {
						type : 'category',
						/* data : [ "衬衫", "羊毛衫", "雪纺衫", "裤子", "高跟鞋", "袜子" ] */
						data:arr1
					} ],
					//Y 坐标
					yAxis : [ {
						type : 'value'
					} ],
					series : [ {
						"name" : "销量",
						"type" : "bar",
						/* "data" : [ 5, 20, 40, 10, 10, 20 ] */
						data:arr2
					} ]
				};
				 
				// 为echarts对象加载数据 
				myChart.setOption(option);
				/* myChart.hideLoading(); */
			});
		}
		
	</script>
</body>
</html>