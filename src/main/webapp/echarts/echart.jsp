<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="assets/styles.css" rel="stylesheet" media="screen">
<link href="assets/DT_bootstrap.css" rel="stylesheet" media="screen">
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<!-- ECharts单文件引入 -->
<script src="<%=path%>/js/dist/echarts.js"></script>
<script src="<%=path%>/js/jquery/jquery-2.1.4.min.js"></script>

<title>EChats</title>
</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="#">Admin Panel</a>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" role="button"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="icon-user"></i> Vincent Gabriel <i class="caret"></i>

						</a>
							<ul class="dropdown-menu">
								<li><a tabindex="-1" href="#">Profile</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="login.html">Logout</a></li>
							</ul></li>
					</ul>
					<ul class="nav">
						<li class="active"><a href="#">Dashboard</a></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Settings <b class="caret"></b>

						</a>
							<ul class="dropdown-menu" id="menu1">
								<li><a href="#">Tools <i class="icon-arrow-right"></i>

								</a>
									<ul class="dropdown-menu sub-menu">
										<li><a href="#">Reports</a></li>
										<li><a href="#">Logs</a></li>
										<li><a href="#">Errors</a></li>
									</ul></li>
								<li><a href="#">SEO Settings</a></li>
								<li><a href="#">Other Link</a></li>
								<li class="divider"></li>
								<li><a href="#">Other Link</a></li>
								<li><a href="#">Other Link</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" role="button"
							class="dropdown-toggle" data-toggle="dropdown">Content <i
								class="caret"></i>

						</a>
							<ul class="dropdown-menu">
								<li><a tabindex="-1" href="#">Blog</a></li>
								<li><a tabindex="-1" href="#">News</a></li>
								<li><a tabindex="-1" href="#">Custom Pages</a></li>
								<li><a tabindex="-1" href="#">Calendar</a></li>
								<li class="divider"></li>
								<li><a tabindex="-1" href="#">FAQ</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" role="button"
							class="dropdown-toggle" data-toggle="dropdown">Users <i
								class="caret"></i>

						</a>
							<ul class="dropdown-menu">
								<li><a tabindex="-1" href="#">User List</a></li>
								<li><a tabindex="-1" href="#">Search</a></li>
								<li><a tabindex="-1" href="#">Permissions</a></li>
							</ul></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	 <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3" id="sidebar">
                    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                        <li>
                            <a href="index.html"><i class="icon-chevron-right"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="testEChart_main.action"><i class="icon-chevron-right"></i> System</a>
                        </li>
                        <li class="active">
                            <a href="testEChart_echart.action"><i class="icon-chevron-right"></i> Echart</a>
                        </li>
                        <li>
                            <a href="testEChart_echartmap.action"><i class="icon-chevron-right"></i> Echart Map</a>
                        </li>
                        <li>
                            <a href="calendar.html"><i class="icon-chevron-right"></i> Calendar</a>
                        </li>
                        <li>
                            <a href="stats.html"><i class="icon-chevron-right"></i> Statistics (Charts)</a>
                        </li>
                        <li>
                            <a href="form.html"><i class="icon-chevron-right"></i> Forms</a>
                        </li>
                        <li>
                            <a href="tables.html"><i class="icon-chevron-right"></i> Tables</a>
                        </li>
                        <li>
                            <a href="buttons.html"><i class="icon-chevron-right"></i> Buttons & Icons</a>
                        </li>
                        <li>
                            <a href="interface.html"><i class="icon-chevron-right"></i> UI & Interface</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-success pull-right">731</span> Orders</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-success pull-right">812</span> Invoices</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">27</span> Clients</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">1,234</span> Users</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">2,221</span> Messages</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-info pull-right">11</span> Reports</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-important pull-right">83</span> Errors</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge badge-warning pull-right">4,231</span> Logs</a>
                        </li>
                    </ul>
                </div>
                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main" style="height: 600px;width:950px;float:left"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//全局变量	
		var arr1 = [];
		var arr2 = [];
		var myChart;

		//路径配置
		require.config({
			paths : {
				echarts : 'js/dist'
			}
		});
		//使用
		require(
			[ 'echarts', 
			  'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
			  'echarts/chart/line',
			], 
			function(ec) {
			// 基于准备好的dom，初始化echarts图表
			myChart = ec.init(document.getElementById('main'));
			myChart.showLoading({			//加载遮罩
				text : "图表数据正在努力加载...",
				textStyle: {  
		           fontFamily:'Arial'
		          }  
			});
			$.ajax({
				type : "post",
				asyns : false,//同步执行 
				url : "common_readData.action",
				data : {
					"entity": "ECharData"//必填
				},
				dataType : "json", //返回数据形式为json
				success : function(result) {	//请求成功
					for (var i = 0; i < result.length; i++) {
						console.log(result[i].name);
						arr1.push(result[i].name);
						arr2.push(result[i].num);
					}
					myChart.hideLoading();	//隐藏遮罩
					/* showEChart(); */
					console.log("arr1:" + arr1);
					console.log("arr2:" + arr2);
					var option = {
							
						//标题
						title : {  
	                        text: 'ECharts Example',  
	                        subtext: '图表示例',  
	                        x:'left',  //左对齐,
	                        textStyle: {  
				                 fontFamily:'微软雅黑'
				                }  
	                        }, 
	                   // 提示框
						tooltip : {
							trigger: 'axis',
							axisPointer:{
					            show: true,
					            type : 'cross',
					            lineStyle: {
					                type : 'dashed',
					                width : 1
					            }
							}
						},
						//图例
						legend : {
							data : [ '销量柱状图','销量折线图' ],
							textStyle: {  
				                 fontFamily:'微软雅黑'
				                }  
						},
						//工具箱
						toolbox: {
							show: true,
					        orient: 'horizontal',      // 布局方式，默认为水平布局，可选为：
					                                   // 'horizontal' ¦ 'vertical'
					        x: 'right',                // 水平安放位置，默认为全图右对齐，可选为：
					                                   // 'center' ¦ 'left' ¦ 'right'
					                                   // ¦ {number}（x坐标，单位px）
					        y: 'top',                  // 垂直安放位置，默认为全图顶端，可选为：
					                                   // 'top' ¦ 'bottom' ¦ 'center'
					        backgroundColor: 'rgba(0,0,0,0)', // 工具箱背景颜色
					        borderColor: '#ccc',       // 工具箱边框颜色
					        borderWidth: 0,            // 工具箱边框线宽，单位px，默认为0（无边框）
					        textStyle: {  
				                 fontFamily:'微软雅黑'
				                },
					        showTitle: true,
					        feature : {
					        	
					            mark : {
					                show : true,
					                title : {
					                    mark : '辅助线-开关',
					                    markUndo : '辅助线-删除',
					                    markClear : '辅助线-清空'
					                },
					                lineStyle : {
					                    width : 1,
					                    color : '#1e90ff',
					                    type : 'dashed'
					                }
					            },
					            dataZoom : {
					                show : true,
					                title : {
					                    dataZoom : '区域缩放',
					                    dataZoomReset : '区域缩放-后退'
					                }
					            },
					            dataView : {
					                show : true,
					                title : '数据视图',
					                readOnly: true,
					                lang : ['数据视图', '关闭', '刷新'],
					                optionToContent: function(opt) {
					                    var axisData = opt.xAxis[0].data;
					                    var series = opt.series;
					                    var table = '<table style="width:100%;text-align:center"><tbody><tr>'
					                                 + '<td>类别</td>'
					                                 + '<td>' + series[0].name + '</td>'
					                                /*  + '<td>' + series[1].name + '</td>' */
					                                 + '</tr>';
					                    for (var i = 0, l = axisData.length; i < l; i++) {
					                        table += '<tr>'
					                                 + '<td>' + axisData[i] + '</td>'
					                                 + '<td>' + series[0].data[i] + '</td>'
					                                /*  + '<td>' + series[1].data[i] + '</td>' */
					                                 + '</tr>';
					                    }
					                    table += '</tbody></table>';
					                    return table;
					                }
					            },
					            magicType: {
					                show : true,
					                title : {
					                    line : '动态类型切换-折线图',
					                    bar : '动态类型切换-柱形图',
					                },
					                type : ['line', 'bar']
					            },
					            restore : {
					                show : true,
					                title : '还原',
					                color : 'black'
					            },
					            saveAsImage : {
					                show : true,
					                title : '保存为图片',
					                type : 'jpeg',
					                lang : ['点击本地保存'] 
					            }
					        }
					    },
						//X 坐标
						xAxis : [ {
							type : 'category',
							data : arr1,
							textStyle: {  
				                 fontFamily:'微软雅黑'
				                },
						} ],
						//Y 坐标
						yAxis : [ {
							type : 'value',
							axisLine: {
					            lineStyle: {
					                color: '#48b'
					            }
					        }
						} ],
						series : [ {
							name : '销量柱状图',
							type : 'bar',
							smooth:true,
							symbol:'circle',
							symbolSize:5,
						    itemStyle: {
                			    normal: {
                    				color: 'tomato',
                    				barBorderColor: 'tomato',
                    				barBorderWidth: 6,
                    				barBorderRadius:0,
                    				label : {
                        				show: true, position: 'insideTop'
                    				}
                				}
            				},
							data : arr2,
							textStyle: {  
				                 fontFamily:'微软雅黑'
				                },
							markPoint : {
				                data : [
				                    {type : 'max', name: '最大值',itemStyle:{normal:{color:'#1e90ff',label:{position:'right'}}}},
				                    {type : 'min', name: '最小值',itemStyle:{normal:{color:'#1e90ff',label:{position:'right'}}}}
				                ]
				            },
				            markLine : {
				                data : [
				                    {type : 'average', name: '平均值'}
				                ]
				            }
						},
						{
							name : '销量折线图',
							type : 'line',
							smooth:true,
							symbol:'circle',
							symbolSize:5,
							/* "data" : [ 5, 20, 40, 10, 10, 20 ] */
						    itemStyle: {
                			    normal: {
                    				color: '#1e90ff',
                				}
            				},
							data : arr2,
							markPoint : {
				                data : [
				                    {type : 'max', name: '最大值',itemStyle:{normal:{color:'#1e90ff',label:{position:'right'}}}},
				                    {type : 'min', name: '最小值',itemStyle:{normal:{color:'#1e90ff',label:{position:'right'}}}}
				                ]
				            },
				            markLine : {
				                data : [
				                    {type : 'average', name: '平均值'}
				                ]
				            }
						}]
					};

					// 为echarts对象加载数据 
					myChart.setOption(option);

				},
				error : function(errorMsg) {	//请求失败
					alert("请求数据失败...");
				}
			})

		});
		/* } */
	</script>
</body>
</html>