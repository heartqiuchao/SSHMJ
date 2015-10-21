<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<script src="js/dist/echarts.js"></script>
<script src="js/jquery/jquery-2.1.4.min.js"></script>
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
                        <li>
                            <a href="testEChart_echart.action"><i class="icon-chevron-right"></i> Echart</a>
                        </li>
                        <li class="active">
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
				<div>
					<div id="main" style="width:45%;height: 300px;float:left"></div>
					<div id="sub" style="width:65%;height: 550px;float:left"></div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		//全局变量	
		var arr1 = [];
		var arr2 = [];
		var chinaChart;
		var cityChart;
		var option;
		var option1;
		var mapType;
		//路径配置
		require.config({
			paths : {
				echarts : 'js/dist'
			}
		});
		//使用
		require(
			[ 'echarts', 
			  'echarts/chart/map',
			], 
			function(ec) {
			// 基于准备好的dom，初始化echarts图表
			chinaChart = ec.init(document.getElementById('main'));
			cityChart = ec.init(document.getElementById('sub'));
			/* 获取初始配置和初始化参数 */
			var ecConfig= require('echarts/config');  
			var zrEvent = require('zrender/tool/event');
			var curIndx = 0;
			mapType = [
			               'china',
			               // 23个省
			               '广东', '青海', '四川', '海南', '陕西', 
			               '甘肃', '云南', '湖南', '湖北', '黑龙江',
			               '贵州', '山东', '江西', '河南', '河北',
			               '山西', '安徽', '福建', '浙江', '江苏', 
			               '吉林', '辽宁', '台湾',
			               // 5个自治
			               '新疆', '广西', '宁夏', '内蒙古', '西藏', 
			               // 4个直辖
			               '北京', '天津', '上海', '重庆',
			               // 2个特别行政
			               '香港', '澳门'
			           ];
			chinaChart.showLoading({			//加载遮罩
				text : "图表数据正在努力加载..."
			});
			$.ajax({
				type : "post",
				asyns : true,//同步执行 
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
					chinaChart.hideLoading();	//隐藏遮罩
					
					/* showEChart(); */
					console.log("arr1:" + arr1);
					console.log("arr2:" + arr2);
					
					option = {
						//标题
						title : {  
	                        text: '全国34个省自治',  
	                        subtext: '中国 （滚轮或点击切换）',  
	                        x:'center'  //默认左对齐
	                        }, 
	                   // 提示框
						tooltip : {
							show : true,
						},
						//图例
						 /* legend : {
							data : [ 'data2','data1'],
							x:'left'
						},  */
						//范围图例
						 dataRange: {  
		                    min:0,  
		                    max:1000,  
		                    orient: 'vertical',
		                    text: ['高','低'],           // 范围显示文本
		                    color: ['#ff3333', 'orange', 'yellow','lime','aqua'],
		                    calculable:true,  
		                    textStyle: {  
		                        color:'orange'  
		                    }  
		                }, 
						//工具箱
						toolbox: {
							show: true,
					        orient: 'vertical',      // 布局方式，默认为水平布局，可选为：
					                                   // 'horizontal' ¦ 'vertical'
					        x: 'right',                // 水平安放位置，默认为全图右对齐，可选为：
					                                   // 'center' ¦ 'left' ¦ 'right'
					                                   // ¦ {number}（x坐标，单位px）
					        y: 'top',                  // 垂直安放位置，默认为全图顶端，可选为：
					                                   // 'top' ¦ 'bottom' ¦ 'center'
					        backgroundColor: 'rgba(0,0,0,0)', // 工具箱背景颜色
					        borderColor: '#ccc',       // 工具箱边框颜色
					        borderWidth: 0,            // 工具箱边框线宽，单位px，默认为0（无边框）
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
					            dataView : {show: true, readOnly: false},
					            restore : {
					                show : true,
					                title : '还原',
					                color : 'black'
					            },
					            saveAsImage : {
					                show : true,
					                title : '保存为图片',
					                type : 'jpg',
					                lang : ['点击本地保存'] 
					            }
					        }
					    },
						series : [ 
							{
								name : 'data2',
								type:'map',
								mapType:'china',
								selectMode:'single',
								itemStyle: {  
						            normal: { label: { show:true }},
						             emphasis: { label: { show:true} }  
						        },  
						        data: [  
						               // 23个省
						               {name: '广东',value: Math.round(Math.random()*1000)},
						               {name: '青海',value: Math.round(Math.random()*1000)},
						               {name: '四川',value: Math.round(Math.random()*1000)},
						               {name: '海南',value: Math.round(Math.random()*1000)},
						               {name: '陕西',value: Math.round(Math.random()*1000)},
						               {name: '甘肃',value: Math.round(Math.random()*1000)},
						               {name: '四川',value: Math.round(Math.random()*1000)},
						               {name: '云南',value: Math.round(Math.random()*1000)},
						               {name: '湖南',value: Math.round(Math.random()*1000)},
						               {name: '湖北',value: Math.round(Math.random()*1000)},
						               {name: '黑龙江',value: Math.round(Math.random()*1000)},
						               {name: '贵州',value: Math.round(Math.random()*1000)},
						               {name: '山东',value: Math.round(Math.random()*1000)},
						               {name: '江西',value: Math.round(Math.random()*1000)},
						               {name: '河南',value: Math.round(Math.random()*1000)},
						               {name: '河北',value: Math.round(Math.random()*1000)},
						               {name: '山西',value: Math.round(Math.random()*1000)},
						               {name: '安徽',value: Math.round(Math.random()*1000)},
						               {name: '福建',value: Math.round(Math.random()*1000)},
						               {name: '浙江',value: Math.round(Math.random()*1000)},
						               {name: '江苏',value: Math.round(Math.random()*1000)},
						               {name: '吉林',value: Math.round(Math.random()*1000)},
						               {name: '辽宁',value: Math.round(Math.random()*1000)},
						               {name: '台湾',value: Math.round(Math.random()*1000)},
						           	// 5个自治'新疆', '广西', '宁夏', '内蒙古', '西藏', 
						               {name: '新疆',value: Math.round(Math.random()*1000)},
						               {name: '广西',value: Math.round(Math.random()*1000)},
						               {name: '宁夏',value: Math.round(Math.random()*1000)},
						               {name: '内蒙古',value: Math.round(Math.random()*1000)},
						               {name: '西藏',value: Math.round(Math.random()*1000)},
						            // 4个直辖
						               {name: '重庆',value: Math.round(Math.random()*1000)},
						               {name: '北京',value: Math.round(Math.random()*1000)},
						               {name: '天津',value: Math.round(Math.random()*1000)},
						               {name: '上海',value: Math.round(Math.random()*1000)},
						            // 2个特别行政
						               {name: '香港',value: Math.round(Math.random()*1000)},
						               {name: '澳门',value: Math.round(Math.random()*1000)},
						            ]  								
							   },
							   {  
					            name:'data1',  
					  
					            type:'map',  
					  
					            mapType:'china',  
					  
					            selectedMode: 'single',  
					           
					            data: [ ]  
					        }]
					};
					option1= {
							//标题
							title : {  
		                        text: '中国',  
		                        x:'left',  //默认左对齐
		                        textStyle: {  
					                 fontFamily:'Arial'
					                }  
		                        }, 
		                   // 提示框
							tooltip : {
								show : true,
							},
							//图例
							legend : {
								data : [ 'datatotal']
							
							},
							//范围图例
							dataRange: {  
			                    min:0,  
			                    max:1000,  
			                    orient: 'vertical',
			                    text: ['高','低'],           // 范围显示文本
			                    color: ['#ff3333', 'orange', 'yellow','lime','aqua'],
			                    orient: 'horizontal',
			                    calculable:true,  
			                    textStyle: {  
			                        color:'orange',
			                        fontFamily:'Arial'
			                    }  
			                },  
							//工具箱
							toolbox: {
								show: true,
						        orient: 'vertical',      // 布局方式，默认为水平布局，可选为：
						                                   // 'horizontal' ¦ 'vertical'
						        x: 'right',                // 水平安放位置，默认为全图右对齐，可选为：
						                                   // 'center' ¦ 'left' ¦ 'right'
						                                   // ¦ {number}（x坐标，单位px）
						        y: 'top',                  // 垂直安放位置，默认为全图顶端，可选为：
						                                   // 'top' ¦ 'bottom' ¦ 'center'
						        backgroundColor: 'rgba(0,0,0,0)', // 工具箱背景颜色
						        borderColor: '#ccc',       // 工具箱边框颜色
						        borderWidth: 0,            // 工具箱边框线宽，单位px，默认为0（无边框）
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
						            magicType: {
						                show : true,
						                title : {
						                    line : '动态类型切换-折线图',
						                    bar : '动态类型切换-柱形图',
						                },
						                type : ['line', 'bar']
						            },
						            dataView : {show: true, readOnly: false},
						            restore : {
						                show : true,
						                title : '还原',
						                color : 'black'
						            },
						            saveAsImage : {
						                show : true,
						                title : '保存为图片',
						                type : 'jpg',
						                lang : ['点击本地保存'] 
						            }
						        }
						    },
							series : [
									{
									name : 'datatotal',
									type:'map',
									mapType:'china',
									selectMode:'single',
									itemStyle: {  
        							normal: { label: { show:true }},// for legend  
         							emphasis: { label: { show:true} }  
    								},  
    								markPoint:{
    									name: "忠县",
    									itemStyle:{
    										normal:{
    											label:{
    												show:true,
    												position:'bottom',
    												formatter:"tryryrtry"
    											}
    										}
    									}
    								},
    								data: [  
                {name: '巴音郭楞蒙古',value: Math.round(Math.random()*1000)},
                {name: '和田地',value: Math.round(Math.random()*1000)},
                {name: '哈密地',value: Math.round(Math.random()*1000)},
                {name: '阿克苏地',value: Math.round(Math.random()*1000)},
                {name: '阿勒泰地',value: Math.round(Math.random()*1000)},
                {name: '喀什地',value: Math.round(Math.random()*1000)},
                {name: '塔城地',value: Math.round(Math.random()*1000)},
                {name: '昌吉',value: Math.round(Math.random()*1000)},
                {name: '克孜勒苏柯尔克孜',value: Math.round(Math.random()*1000)},
                {name: '吐鲁番地',value: Math.round(Math.random()*1000)},
                {name: '伊犁哈萨克',value: Math.round(Math.random()*1000)},
                {name: '博尔塔拉蒙古',value: Math.round(Math.random()*1000)},
                {name: '乌鲁木齐',value: Math.round(Math.random()*1000)},
                {name: '克拉玛依',value: Math.round(Math.random()*1000)},
                {name: '阿拉尔',value: Math.round(Math.random()*1000)},
                {name: '图木舒克',value: Math.round(Math.random()*1000)},
                {name: '五家渠',value: Math.round(Math.random()*1000)},
                {name: '石河子',value: Math.round(Math.random()*1000)},
                {name: '那曲地',value: Math.round(Math.random()*1000)},
                {name: '阿里地',value: Math.round(Math.random()*1000)},
                {name: '日喀则地',value: Math.round(Math.random()*1000)},
                {name: '林芝地',value: Math.round(Math.random()*1000)},
                {name: '昌都地',value: Math.round(Math.random()*1000)},
                {name: '山南地',value: Math.round(Math.random()*1000)},
                {name: '拉萨',value: Math.round(Math.random()*1000)},
                {name: '呼伦贝尔',value: Math.round(Math.random()*1000)},
                {name: '阿拉善盟',value: Math.round(Math.random()*1000)},
                {name: '锡林郭勒盟',value: Math.round(Math.random()*1000)},
                {name: '鄂尔多斯',value: Math.round(Math.random()*1000)},
                {name: '赤峰',value: Math.round(Math.random()*1000)},
                {name: '巴彦淖尔',value: Math.round(Math.random()*1000)},
                {name: '通辽',value: Math.round(Math.random()*1000)},
                {name: '乌兰察布',value: Math.round(Math.random()*1000)},
                {name: '兴安盟',value: Math.round(Math.random()*1000)},
                {name: '包头',value: Math.round(Math.random()*1000)},
                {name: '呼和浩特',value: Math.round(Math.random()*1000)},
                {name: '乌海',value: Math.round(Math.random()*1000)},
                {name: '海西',value: Math.round(Math.random()*1000)},
                {name: '玉树',value: Math.round(Math.random()*1000)},
                {name: '果洛',value: Math.round(Math.random()*1000)},
                {name: '海南',value: Math.round(Math.random()*1000)},
                {name: '海北',value: Math.round(Math.random()*1000)},
                {name: '黄南',value: Math.round(Math.random()*1000)},
                {name: '海东地',value: Math.round(Math.random()*1000)},
                {name: '西宁',value: Math.round(Math.random()*1000)},
                {name: '甘孜',value: Math.round(Math.random()*1000)},
                {name: '阿坝',value: Math.round(Math.random()*1000)},
                {name: '凉山',value: Math.round(Math.random()*1000)},
                {name: '绵阳',value: Math.round(Math.random()*1000)},
                {name: '达州',value: Math.round(Math.random()*1000)},
                {name: '广元',value: Math.round(Math.random()*1000)},
                {name: '雅安',value: Math.round(Math.random()*1000)},
                {name: '宜宾',value: Math.round(Math.random()*1000)},
                {name: '乐山',value: Math.round(Math.random()*1000)},
                {name: '南充',value: Math.round(Math.random()*1000)},
                {name: '巴中',value: Math.round(Math.random()*1000)},
                {name: '泸州',value: Math.round(Math.random()*1000)},
                {name: '成都',value: Math.round(Math.random()*1000)},
                {name: '资阳',value: Math.round(Math.random()*1000)},
                {name: '攀枝花',value: Math.round(Math.random()*1000)},
                {name: '眉山',value: Math.round(Math.random()*1000)},
                {name: '广安',value: Math.round(Math.random()*1000)},
                {name: '德阳',value: Math.round(Math.random()*1000)},
                {name: '内江',value: Math.round(Math.random()*1000)},
                {name: '遂宁',value: Math.round(Math.random()*1000)},
                {name: '自贡',value: Math.round(Math.random()*1000)},
                {name: '黑河',value: Math.round(Math.random()*1000)},
                {name: '大兴安岭地',value: Math.round(Math.random()*1000)},
                {name: '哈尔滨',value: Math.round(Math.random()*1000)},
                {name: '齐齐哈尔',value: Math.round(Math.random()*1000)},
                {name: '牡丹江',value: Math.round(Math.random()*1000)},
                {name: '绥化',value: Math.round(Math.random()*1000)},
                {name: '伊春',value: Math.round(Math.random()*1000)},
                {name: '佳木斯',value: Math.round(Math.random()*1000)},
                {name: '鸡西',value: Math.round(Math.random()*1000)},
                {name: '双鸭山',value: Math.round(Math.random()*1000)},
                {name: '大庆',value: Math.round(Math.random()*1000)},
                {name: '鹤岗',value: Math.round(Math.random()*1000)},
                {name: '七台河',value: Math.round(Math.random()*1000)},
                {name: '酒泉',value: Math.round(Math.random()*1000)},
                {name: '张掖',value: Math.round(Math.random()*1000)},
                {name: '甘南',value: Math.round(Math.random()*1000)},
                {name: '武威',value: Math.round(Math.random()*1000)},
                {name: '陇南',value: Math.round(Math.random()*1000)},
                {name: '庆阳',value: Math.round(Math.random()*1000)},
                {name: '白银',value: Math.round(Math.random()*1000)},
                {name: '定西',value: Math.round(Math.random()*1000)},
                {name: '天水',value: Math.round(Math.random()*1000)},
                {name: '兰州',value: Math.round(Math.random()*1000)},
                {name: '平凉',value: Math.round(Math.random()*1000)},
                {name: '临夏',value: Math.round(Math.random()*1000)},
                {name: '金昌',value: Math.round(Math.random()*1000)},
                {name: '嘉峪关',value: Math.round(Math.random()*1000)},
                {name: '普洱',value: Math.round(Math.random()*1000)},
                {name: '红河',value: Math.round(Math.random()*1000)},
                {name: '文山',value: Math.round(Math.random()*1000)},
                {name: '曲靖',value: Math.round(Math.random()*1000)},
                {name: '楚雄',value: Math.round(Math.random()*1000)},
                {name: '大理',value: Math.round(Math.random()*1000)},
                {name: '临沧',value: Math.round(Math.random()*1000)},
                {name: '迪庆',value: Math.round(Math.random()*1000)},
                {name: '昭通',value: Math.round(Math.random()*1000)},
                {name: '昆明',value: Math.round(Math.random()*1000)},
                {name: '丽江',value: Math.round(Math.random()*1000)},
                {name: '西双版纳',value: Math.round(Math.random()*1000)},
                {name: '保山',value: Math.round(Math.random()*1000)},
                {name: '玉溪',value: Math.round(Math.random()*1000)},
                {name: '怒江',value: Math.round(Math.random()*1000)},
                {name: '德宏',value: Math.round(Math.random()*1000)},
                {name: '百色',value: Math.round(Math.random()*1000)},
                {name: '河池',value: Math.round(Math.random()*1000)},
                {name: '桂林',value: Math.round(Math.random()*1000)},
                {name: '南宁',value: Math.round(Math.random()*1000)},
                {name: '柳州',value: Math.round(Math.random()*1000)},
                {name: '崇左',value: Math.round(Math.random()*1000)},
                {name: '来宾',value: Math.round(Math.random()*1000)},
                {name: '玉林',value: Math.round(Math.random()*1000)},
                {name: '梧州',value: Math.round(Math.random()*1000)},
                {name: '贺州',value: Math.round(Math.random()*1000)},
                {name: '钦州',value: Math.round(Math.random()*1000)},
                {name: '贵港',value: Math.round(Math.random()*1000)},
                {name: '防城港',value: Math.round(Math.random()*1000)},
                {name: '北海',value: Math.round(Math.random()*1000)},
                {name: '怀化',value: Math.round(Math.random()*1000)},
                {name: '永州',value: Math.round(Math.random()*1000)},
                {name: '邵阳',value: Math.round(Math.random()*1000)},
                {name: '郴州',value: Math.round(Math.random()*1000)},
                {name: '常德',value: Math.round(Math.random()*1000)},
                {name: '湘西',value: Math.round(Math.random()*1000)},
                {name: '衡阳',value: Math.round(Math.random()*1000)},
                {name: '岳阳',value: Math.round(Math.random()*1000)},
                {name: '益阳',value: Math.round(Math.random()*1000)},
                {name: '长沙',value: Math.round(Math.random()*1000)},
                {name: '株洲',value: Math.round(Math.random()*1000)},
                {name: '张家界',value: Math.round(Math.random()*1000)},
                {name: '娄底',value: Math.round(Math.random()*1000)},
                {name: '湘潭',value: Math.round(Math.random()*1000)},
                {name: '榆林',value: Math.round(Math.random()*1000)},
                {name: '延安',value: Math.round(Math.random()*1000)},
                {name: '汉中',value: Math.round(Math.random()*1000)},
                {name: '安康',value: Math.round(Math.random()*1000)},
                {name: '商洛',value: Math.round(Math.random()*1000)},
                {name: '宝鸡',value: Math.round(Math.random()*1000)},
                {name: '渭南',value: Math.round(Math.random()*1000)},
                {name: '咸阳',value: Math.round(Math.random()*1000)},
                {name: '西安',value: Math.round(Math.random()*1000)},
                {name: '铜川',value: Math.round(Math.random()*1000)},
                {name: '清远',value: Math.round(Math.random()*1000)},
                {name: '韶关',value: Math.round(Math.random()*1000)},
                {name: '湛江',value: Math.round(Math.random()*1000)},
                {name: '梅州',value: Math.round(Math.random()*1000)},
                {name: '河源',value: Math.round(Math.random()*1000)},
                {name: '肇庆',value: Math.round(Math.random()*1000)},
                {name: '惠州',value: Math.round(Math.random()*1000)},
                {name: '茂名',value: Math.round(Math.random()*1000)},
                {name: '江门',value: Math.round(Math.random()*1000)},
                {name: '阳江',value: Math.round(Math.random()*1000)},
                {name: '云浮',value: Math.round(Math.random()*1000)},
                {name: '广州',value: Math.round(Math.random()*1000)},
                {name: '汕尾',value: Math.round(Math.random()*1000)},
                {name: '揭阳',value: Math.round(Math.random()*1000)},
                {name: '珠海',value: Math.round(Math.random()*1000)},
                {name: '佛山',value: Math.round(Math.random()*1000)},
                {name: '潮州',value: Math.round(Math.random()*1000)},
                {name: '汕头',value: Math.round(Math.random()*1000)},
                {name: '深圳',value: Math.round(Math.random()*1000)},
                {name: '东莞',value: Math.round(Math.random()*1000)},
                {name: '中山',value: Math.round(Math.random()*1000)},
                {name: '延边',value: Math.round(Math.random()*1000)},
                {name: '吉林',value: Math.round(Math.random()*1000)},
                {name: '白城',value: Math.round(Math.random()*1000)},
                {name: '松原',value: Math.round(Math.random()*1000)},
                {name: '长春',value: Math.round(Math.random()*1000)},
                {name: '白山',value: Math.round(Math.random()*1000)},
                {name: '通化',value: Math.round(Math.random()*1000)},
                {name: '四平',value: Math.round(Math.random()*1000)},
                {name: '辽源',value: Math.round(Math.random()*1000)},
                {name: '承德',value: Math.round(Math.random()*1000)},
                {name: '张家口',value: Math.round(Math.random()*1000)},
                {name: '保定',value: Math.round(Math.random()*1000)},
                {name: '唐山',value: Math.round(Math.random()*1000)},
                {name: '沧州',value: Math.round(Math.random()*1000)},
                {name: '石家庄',value: Math.round(Math.random()*1000)},
                {name: '邢台',value: Math.round(Math.random()*1000)},
                {name: '邯郸',value: Math.round(Math.random()*1000)},
                {name: '秦皇岛',value: Math.round(Math.random()*1000)},
                {name: '衡水',value: Math.round(Math.random()*1000)},
                {name: '廊坊',value: Math.round(Math.random()*1000)},
                {name: '恩施',value: Math.round(Math.random()*1000)},
                {name: '十堰',value: Math.round(Math.random()*1000)},
                {name: '宜昌',value: Math.round(Math.random()*1000)},
                {name: '襄樊',value: Math.round(Math.random()*1000)},
                {name: '黄冈',value: Math.round(Math.random()*1000)},
                {name: '荆州',value: Math.round(Math.random()*1000)},
                {name: '荆门',value: Math.round(Math.random()*1000)},
                {name: '咸宁',value: Math.round(Math.random()*1000)},
                {name: '随州',value: Math.round(Math.random()*1000)},
                {name: '孝感',value: Math.round(Math.random()*1000)},
                {name: '武汉',value: Math.round(Math.random()*1000)},
                {name: '黄石',value: Math.round(Math.random()*1000)},
                {name: '神农架林',value: Math.round(Math.random()*1000)},
                {name: '天门',value: Math.round(Math.random()*1000)},
                {name: '仙桃',value: Math.round(Math.random()*1000)},
                {name: '潜江',value: Math.round(Math.random()*1000)},
                {name: '鄂州',value: Math.round(Math.random()*1000)},
                {name: '遵义',value: Math.round(Math.random()*1000)},
                {name: '黔东南',value: Math.round(Math.random()*1000)},
                {name: '毕节地',value: Math.round(Math.random()*1000)},
                {name: '黔南',value: Math.round(Math.random()*1000)},
                {name: '铜仁地',value: Math.round(Math.random()*1000)},
                {name: '黔西南',value: Math.round(Math.random()*1000)},
                {name: '六盘水',value: Math.round(Math.random()*1000)},
                {name: '安顺',value: Math.round(Math.random()*1000)},
                {name: '贵阳',value: Math.round(Math.random()*1000)},
                {name: '烟台',value: Math.round(Math.random()*1000)},
                {name: '临沂',value: Math.round(Math.random()*1000)},
                {name: '潍坊',value: Math.round(Math.random()*1000)},
                {name: '青岛',value: Math.round(Math.random()*1000)},
                {name: '菏泽',value: Math.round(Math.random()*1000)},
                {name: '济宁',value: Math.round(Math.random()*1000)},
                {name: '德州',value: Math.round(Math.random()*1000)},
                {name: '滨州',value: Math.round(Math.random()*1000)},
                {name: '聊城',value: Math.round(Math.random()*1000)},
                {name: '东营',value: Math.round(Math.random()*1000)},
                {name: '济南',value: Math.round(Math.random()*1000)},
                {name: '泰安',value: Math.round(Math.random()*1000)},
                {name: '威海',value: Math.round(Math.random()*1000)},
                {name: '日照',value: Math.round(Math.random()*1000)},
                {name: '淄博',value: Math.round(Math.random()*1000)},
                {name: '枣庄',value: Math.round(Math.random()*1000)},
                {name: '莱芜',value: Math.round(Math.random()*1000)},
                {name: '赣州',value: Math.round(Math.random()*1000)},
                {name: '吉安',value: Math.round(Math.random()*1000)},
                {name: '上饶',value: Math.round(Math.random()*1000)},
                {name: '九江',value: Math.round(Math.random()*1000)},
                {name: '抚州',value: Math.round(Math.random()*1000)},
                {name: '宜春',value: Math.round(Math.random()*1000)},
                {name: '南昌',value: Math.round(Math.random()*1000)},
                {name: '景德镇',value: Math.round(Math.random()*1000)},
                {name: '萍乡',value: Math.round(Math.random()*1000)},
                {name: '鹰潭',value: Math.round(Math.random()*1000)},
                {name: '新余',value: Math.round(Math.random()*1000)},
                {name: '南阳',value: Math.round(Math.random()*1000)},
                {name: '信阳',value: Math.round(Math.random()*1000)},
                {name: '洛阳',value: Math.round(Math.random()*1000)},
                {name: '驻马店',value: Math.round(Math.random()*1000)},
                {name: '周口',value: Math.round(Math.random()*1000)},
                {name: '商丘',value: Math.round(Math.random()*1000)},
                {name: '三门峡',value: Math.round(Math.random()*1000)},
                {name: '新乡',value: Math.round(Math.random()*1000)},
                {name: '平顶山',value: Math.round(Math.random()*1000)},
                {name: '郑州',value: Math.round(Math.random()*1000)},
                {name: '安阳',value: Math.round(Math.random()*1000)},
                {name: '开封',value: Math.round(Math.random()*1000)},
                {name: '焦作',value: Math.round(Math.random()*1000)},
                {name: '许昌',value: Math.round(Math.random()*1000)},
                {name: '濮阳',value: Math.round(Math.random()*1000)},
                {name: '漯河',value: Math.round(Math.random()*1000)},
                {name: '鹤壁',value: Math.round(Math.random()*1000)},
                {name: '大连',value: Math.round(Math.random()*1000)},
                {name: '朝阳',value: Math.round(Math.random()*1000)},
                {name: '丹东',value: Math.round(Math.random()*1000)},
                {name: '铁岭',value: Math.round(Math.random()*1000)},
                {name: '沈阳',value: Math.round(Math.random()*1000)},
                {name: '抚顺',value: Math.round(Math.random()*1000)},
                {name: '葫芦岛',value: Math.round(Math.random()*1000)},
                {name: '阜新',value: Math.round(Math.random()*1000)},
                {name: '锦州',value: Math.round(Math.random()*1000)},
                {name: '鞍山',value: Math.round(Math.random()*1000)},
                {name: '本溪',value: Math.round(Math.random()*1000)},
                {name: '营口',value: Math.round(Math.random()*1000)},
                {name: '辽阳',value: Math.round(Math.random()*1000)},
                {name: '盘锦',value: Math.round(Math.random()*1000)},
                {name: '忻州',value: Math.round(Math.random()*1000)},
                {name: '吕梁',value: Math.round(Math.random()*1000)},
                {name: '临汾',value: Math.round(Math.random()*1000)},
                {name: '晋中',value: Math.round(Math.random()*1000)},
                {name: '运城',value: Math.round(Math.random()*1000)},
                {name: '大同',value: Math.round(Math.random()*1000)},
                {name: '长治',value: Math.round(Math.random()*1000)},
                {name: '朔州',value: Math.round(Math.random()*1000)},
                {name: '晋城',value: Math.round(Math.random()*1000)},
                {name: '太原',value: Math.round(Math.random()*1000)},
                {name: '阳泉',value: Math.round(Math.random()*1000)},
                {name: '六安',value: Math.round(Math.random()*1000)},
                {name: '安庆',value: Math.round(Math.random()*1000)},
                {name: '滁州',value: Math.round(Math.random()*1000)},
                {name: '宣城',value: Math.round(Math.random()*1000)},
                {name: '阜阳',value: Math.round(Math.random()*1000)},
                {name: '宿州',value: Math.round(Math.random()*1000)},
                {name: '黄山',value: Math.round(Math.random()*1000)},
                {name: '巢湖',value: Math.round(Math.random()*1000)},
                {name: '亳州',value: Math.round(Math.random()*1000)},
                {name: '池州',value: Math.round(Math.random()*1000)},
                {name: '合肥',value: Math.round(Math.random()*1000)},
                {name: '蚌埠',value: Math.round(Math.random()*1000)},
                {name: '芜湖',value: Math.round(Math.random()*1000)},
                {name: '淮北',value: Math.round(Math.random()*1000)},
                {name: '淮南',value: Math.round(Math.random()*1000)},
                {name: '马鞍山',value: Math.round(Math.random()*1000)},
                {name: '铜陵',value: Math.round(Math.random()*1000)},
                {name: '南平',value: Math.round(Math.random()*1000)},
                {name: '三明',value: Math.round(Math.random()*1000)},
                {name: '龙岩',value: Math.round(Math.random()*1000)},
                {name: '宁德',value: Math.round(Math.random()*1000)},
                {name: '福州',value: Math.round(Math.random()*1000)},
                {name: '漳州',value: Math.round(Math.random()*1000)},
                {name: '泉州',value: Math.round(Math.random()*1000)},
                {name: '莆田',value: Math.round(Math.random()*1000)},
                {name: '厦门',value: Math.round(Math.random()*1000)},
                {name: '丽水',value: Math.round(Math.random()*1000)},
                {name: '杭州',value: Math.round(Math.random()*1000)},
                {name: '温州',value: Math.round(Math.random()*1000)},
                {name: '宁波',value: Math.round(Math.random()*1000)},
                {name: '舟山',value: Math.round(Math.random()*1000)},
                {name: '台州',value: Math.round(Math.random()*1000)},
                {name: '金华',value: Math.round(Math.random()*1000)},
                {name: '衢州',value: Math.round(Math.random()*1000)},
                {name: '绍兴',value: Math.round(Math.random()*1000)},
                {name: '嘉兴',value: Math.round(Math.random()*1000)},
                {name: '湖州',value: Math.round(Math.random()*1000)},
                {name: '盐城',value: Math.round(Math.random()*1000)},
                {name: '徐州',value: Math.round(Math.random()*1000)},
                {name: '南通',value: Math.round(Math.random()*1000)},
                {name: '淮安',value: Math.round(Math.random()*1000)},
                {name: '苏州',value: Math.round(Math.random()*1000)},
                {name: '宿迁',value: Math.round(Math.random()*1000)},
                {name: '连云港',value: Math.round(Math.random()*1000)},
                {name: '扬州',value: Math.round(Math.random()*1000)},
                {name: '南京',value: Math.round(Math.random()*1000)},
                {name: '泰州',value: Math.round(Math.random()*1000)},
                {name: '无锡',value: Math.round(Math.random()*1000)},
                {name: '常州',value: Math.round(Math.random()*1000)},
                {name: '镇江',value: Math.round(Math.random()*1000)},
                {name: '吴忠',value: Math.round(Math.random()*1000)},
                {name: '中卫',value: Math.round(Math.random()*1000)},
                {name: '固原',value: Math.round(Math.random()*1000)},
                {name: '银川',value: Math.round(Math.random()*1000)},
                {name: '石嘴山',value: Math.round(Math.random()*1000)},
                {name: '儋州',value: Math.round(Math.random()*1000)},
                {name: '文昌',value: Math.round(Math.random()*1000)},
                {name: '乐东',value: Math.round(Math.random()*1000)},
                {name: '三亚',value: Math.round(Math.random()*1000)},
                {name: '琼中',value: Math.round(Math.random()*1000)},
                {name: '东方',value: Math.round(Math.random()*1000)},
                {name: '海口',value: Math.round(Math.random()*1000)},
                {name: '万宁',value: Math.round(Math.random()*1000)},
                {name: '澄迈',value: Math.round(Math.random()*1000)},
                {name: '白沙',value: Math.round(Math.random()*1000)},
                {name: '琼海',value: Math.round(Math.random()*1000)},
                {name: '昌江',value: Math.round(Math.random()*1000)},
                {name: '临高',value: Math.round(Math.random()*1000)},
                {name: '陵水',value: Math.round(Math.random()*1000)},
                {name: '屯昌',value: Math.round(Math.random()*1000)},
                {name: '定安',value: Math.round(Math.random()*1000)},
                {name: '忠县',value: Math.round(Math.random()*1000)},
                {name: '保亭',value: Math.round(Math.random()*1000)},
                {name: '五指山',value: Math.round(Math.random()*1000)}
        								]  								
   									}]
					};
					/* 鼠标滚轮事件 */
					document.getElementById('main').onmousewheel = function (e){
					    var event = e || window.event;
					    curIndx += zrEvent.getDelta(event) > 0 ? (-1) : 1;
					    if (curIndx < 0) {
					        curIndx = mapType.length - 1;
					    }
					    var mt = mapType[curIndx % mapType.length];
					    option1.series[0].mapType = mt;
					    option1.title.text = mt;
					    cityChart.setOption(option1, true);
					    
					    zrEvent.stop(event);
					};
					//以下的这段代码主要是用来处理用户的选择，应用场景是可以做地图的交互，比如点击地图上的某一个省，获取相应的省的指标变化等。  
		             //需要特别注意的是，如果需要点击某一省作地图的操作交互的话，还需要为series属性的每一项添加一个selectedMode属性，这里的属性值为 'single'即单选，也可多选  
					 chinaChart.on(ecConfig.EVENT.MAP_SELECTED,function (param) {  
						 var len = mapType.length;
						 console.log(option.series[0].mapType);
						 var mt='china'; 
					 /*  全国选择时指定到选中的省份 */
						 var selected = param.selected;
						 console.log(selected);
						 for (var i in selected) {
						     if (selected[i]) {
						         mt = i;
						         while (len--) {
					                  if (mapType[len] == mt) {
					                      curIndx = len;
					                  }
					              }
						         break;
						      }
						  }
						  option1.series[0].mapType = mt;
						  console.log(option1.series[0].mapType);
						  option1.title.text = mt;
						  cityChart.setOption(option1, true); 
					 });
					// 为echarts对象加载数据 
					chinaChart.setOption(option);
					cityChart.setOption(option1);

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