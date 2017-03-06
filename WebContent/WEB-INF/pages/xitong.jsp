<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="easiui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easiui/locale/easyui-lang-zh_CN.js"></script>
<link href="easiui/themes/icon.css" rel="stylesheet" type="text/css">
<link href="easiui/themes/default/easyui.css" rel="stylesheet"
	type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>仓库管理系统</title>
<script type="text/javascript">

	$(function() {
		$("#tt").tree({
			lines : true,
			data : [ {
				"id" : 0,
				"text" : "系统",
				"children" : [ {
					"id" : 1,
					"text" : "采购",
					"state" : closed,
					"children" : [ {
						"id" : 101,
						"text" : "订单申请",
						"state" : closed,
						"children" : [ {
							"id" : 10101,
							"text" : "采购订单",
							"attributes":{"url":"listuser.jsp",
								"icon":"icon-search", 
								}
						 
							
						}, {
							"id" : 10102,
							"text" : "采购退货申请",
						}, {
							"id" : 10103,
							"text" : "采购换货申请",
						} ]

					}, {
						"id" : 102,
						"text" : "业务记账",
						"state" : closed,
						"children" : [ {
							"id" : 10201,
							"text" : "采购入库单",
						}, {
							"id" : 10202,
							"text" : "采购退货单",
						}, {
							"id" : 10203,
							"text" : "采购换货单",
						}, {
							"id" : 10204,
							"text" : "采购历史",
						} ]
					} ]
				}, {
					"id" : 2,
					"text" : "销售",
					"state" : closed,
					"children" : [ {
						"id" : 201,
						"text" : "订单申请",
						"state" : closed,
						"children" : [ {
							"id" : 20101,
							"text" : "销售订单",
						}, {
							"id" : 20102,
							"text" : "销售退货申请",
						}, {
							"id" : 20103,
							"text" : "销售换货申请",
						} ]
					}, {
						"id" : 202,
						"text" : "业务记账",
						"state" : closed,
						"children" : [ {
							"id" : 20201,
							"text" : "零售单",
						}, {
							"id" : 20202,
							"text" : "零售单交班历史",
						}, {
							"id" : 20203,
							"text" : "销售出库单",
						}, {
							"id" : 20204,
							"text" : "销售退货单",
						} ]
					}, {
						"id" : 203,
						"text" : "价格查询",
						"state" : closed,
						"children" : [ {
							"id" : 20301,
							"text" : "报价",
						}, {
							"id" : 20302,
							"text" : "客户报价查询",
						} ]
					} ]
				}, {
					"id" : 3,
					"text" : "仓库",
					"state" : closed,
					"children" : [ {
						"id" : 301,
						"text" : "调拨",
						"state" : closed,
						"children" : [ {
							"id" : 30101,
							"text" : "同价调拨申请",
						}, {
							"id" : 30102,
							"text" : "变价调拨申请",
						}, {
							"id" : 30103,
							"text" : "同价调拨单",
						}, {
							"id" : 30104,
							"text" : "变价调拨单",
						} ]
					}, {
						"id" : 302,
						"text" : "收发货",
						"state" : closed,
						"children" : [ {
							"id" : 30201,
							"text" : "收货",
						}, {
							"id" : 30202,
							"text" : "发货",
						} ]
					}, {
						"id" : 303,
						"text" : "业务记账",
						"state" : closed,
						"children" : [ {
							"id" : 30301,
							"text" : "报损单",
						}, {
							"id" : 30302,
							"text" : "报溢单",
						}, {
							"id" : 30303,
							"text" : "其他入库单",
						}, {
							"id" : 30304,
							"text" : "其他出库单",
						}, {
							"id" : 30305,
							"text" : "成本调价单",
						}, {
							"id" : 30306,
							"text" : "库存盘点单",
						}, {
							"id" : 30307,
							"text" : "分量盘点单",
						} ]
					} ]
				}, {
					"id" : 4,
					"text" : "资金",
					"state" : closed,
					"children" : [ {
						"id" : 401,
						"text" : "收款",
						"state" : closed,
						"children" : [ {
							"id" : 40101,
							"text" : "收欠款",
						}, {
							"id" : 40102,
							"text" : "收款单",
						}, {
							"id" : 40103,
							"text" : "收款历史",
						}, {
							"id" : 40104,
							"text" : "预收款单",
						} ]

					}, {
						"id" : 402,
						"text" : "付款",
						"state" : closed,
						"children" : [ {
							"id" : 40201,
							"text" : "付款单",
						}, {
							"id" : 40202,
							"text" : ".付款历史",
						}, {
							"id" : 40203,
							"text" : "预付款单",
						} ]
					}, {
						"id" : 403,
						"text" : "收入支出",
						"state" : closed,
						"children" : [ {
							"id" : 40301,
							"text" : "费用单",
						}, {
							"id" : 40302,
							"text" : "费用历史",
						}, {
							"id" : 40303,
							"text" : "其他收入",
						}, {
							"id" : 40304,
							"text" : "提现存现转款",
						} ]
					}, {
						"id" : 404,
						"text" : "调账",
						"state" : closed,
						"children" : [ {
							"id" : 40401,
							"text" : "应收应付调整",
						}, {
							"id" : 40402,
							"text" : "往来清账",
						} ]
					} ]
				}, {
					"id" : 5,
					"text" : "财务",
					"state" : closed,
					"children" : [ {
						"id" : 501,
						"text" : "期初",
						"state" : closed,
						"children" : [ {
							"id" : 50101,
							"text" : "会计期间",
						}, {
							"id" : 50102,
							"text" : "会计科目",
						}, {
							"id" : 50103,
							"text" : "财务期初",
						} ]
					}, {
						"id" : 502,
						"text" : "总账",
						"children" : [ {
							"id" : 50201,
							"text" : "会计凭证",
						}, {
							"id" : 50202,
							"text" : "结账",
						} ]
					}, {
						"id" : 503,
						"text" : "财务报表",
						"state" : closed,
						"children" : [ {
							"id" : 50301,
							"text" : "科目余额表",
						}, {
							"id" : 50302,
							"text" : "资产负债表",
						}, {
							"id" : 50303,
							"text" : "利润表",
						}, {
							"id" : 50304,
							"text" : "经营日月年报",
						} ]
					} ]
				}, {
					"id" : 6,
					"text" : "报表",
					"state" : closed,
					"children" : [ {
						"id" : 601,
						"text" : "单据中心",
						"state" : closed,
						"children" : [ {
							"id" : 60101,
							"text" : "待审批单据",
						}, {
							"id" : 60102,
							"text" : "待记账单据",
						}, {
							"id" : 60103,
							"text" : "业务草稿",
						}, {
							"id" : 60104,
							"text" : "经营历程",
						} ]
					}, {
						"id" : 602,
						"text" : "库存报表",
						"state" : closed,
						"children" : [ {
							"id" : 60201,
							"text" : "查库存",
						}, {
							"id" : 60202,
							"text" : "进销存分析",
						}, {
							"id" : 60203,
							"text" : "调拨分析",
						}, {
							"id" : 60204,
							"text" : "报溢报损分析",
						}, {
							"id" : 60205,
							"text" : "库存周转率",
						} ]
					}, {
						"id" : 603,
						"text" : "销售报表",
						"state" : closed,
						"children" : [ {
							"id" : 60301,
							"text" : "销售日月年报",
						}, {
							"id" : 60302,
							"text" : "销售分析",
						}, {
							"id" : 60303,
							"text" : "销售订单分析",
						} ]
					}, {
						"id" : 604,
						"text" : "资金报表",
						"state" : closed,
						"children" : [ {
							"id" : 60401,
							"text" : "查应收",
						}, {
							"id" : 60402,
							"text" : "查应付",
						}, {
							"id" : 60403,
							"text" : "查资金",
						}, {
							"id" : 60404,
							"text" : "查费用",
						} ]
					} ]

				}, {
					"id" : 7,
					"text" : "商城",
					"state" : closed,
					"children" : [ {
						"id" : 701,
						"text" : "线上订单",
						"state" : closed,
						"children" : [ {
							"id" : 70101,
							"text" : "线上订单处理",
						}, {
							"id" : 70202,
							"text" : "线上退货处理",
						}, {
							"id" : 70303,
							"text" : "待确认款项",
						} ]
					}, {
						"id" : 702,
						"text" : "买家管理",
						"state" : closed,
						"children" : [ {
							"id" : 70201,
							"text" : "买家管理",
						} ]
					}, {
						"id" : 703,
						"text" : "店铺管理",
						"state" : closed,
						"children" : [ {
							"id" : 70301,
							"text" : "店铺设置",
						}, {
							"id" : 70302,
							"text" : "通知公告",
						} ]
					} ]
				}, {
					"id" : 8,
					"text" : "CRM",
					"state" : closed,
					"children" : [ {
						"id" : 801,
						"text" : "客户",
					}, {
						"id" : 802,
						"text" : "跟进",
					}, {
						"id" : 803,
						"text" : "合同"
					}, {
						"id" : 804,
						"text" : "日程"
					}, {
						"id" : 805,
						"text" : "动态"
					} ]
				}, {
					"id" : 9,
					"text" : "资料",
					"state" : closed,
					"children" : [ {
						"id" : 901,
						"text" : "常用资料",
						"state" : closed,
						"children" : [ {
							"id" : 90101,
							"text" : "商品",
						}, {
							"id" : 90102,
							"text" : "客户",
						}, {
							"id" : 90103,
							"text" : "供应商",
						}, {
							"id" : 90104,
							"text" : "物流公司",
						} ]
					}, {
						"id" : 902,
						"text" : "机构管理",
						"state" : closed,
						"children" : [ {
							"id" : 90201,
							"text" : "仓库管理",
						}, {
							"id" : 90202,
							"text" : "职员部门",
						}, {
							"id" : 90203,
							"text" : "财务账户",
						} ]
					}, {
						"id" : 903,
						"text" : "商品高级管理",
						"state" : closed,
						"children" : [ {
							"id" : 90301,
							"text" : "商品价格管理",
						}, {
							"id" : 90302,
							"text" : "图片管理",
						}, {
							"id" : 90303,
							"text" : "商品辅助资料",
						}, {
							"id" : 90304,
							"text" : "优惠卷",
						}, {
							"id" : 90305,
							"text" : "商品条码",
						}, {
							"id" : 90306,
							"text" : "预警设置",
						} ]
					} ]
				}, {
					"id" : 10,
					"text" : "设置",
					"state" : closed,
					"children" : [ {
						"id" : 1001,
						"text" : "系统管理",
						"state" : closed,
						"children" : [ {
							"id" : 100101,
							"text" : "职员部门",
						}, {
							"id" : 100102,
							"text" : "系统参数",
						}, {
							"id" : 100103,
							"text" : "审核设置",
						}, {
							"id" : 100104,
							"text" : "操作日志",
						}, {
							"id" : 100105,
							"text" : "支付配置",
						}, {
							"id" : 100106,
							"text" : "企业信息",
						} ]
					}, {
						"id" : 1002,
						"text" : "期初开账",
						"state" : closed,
						"children" : [ {
							"id" : 100201,
							"text" : "库存期初",
						}, {
							"id" : 100202,
							"text" : "系统重建",
						} ]
					}, {
						"id" : 1003,
						"text" : "短信管理",
						"state" : closed,
						"children" : [ {
							"id" : 100301,
							"text" : "短信模板列表",
						}, {
							"id" : 100302,
							"text" : "短信历史",
						} ]
					} ]
				} ]
		 } ],
		 
			 onClick:function(node){
				 if(!$("#tabs").tabs("exists",node.text)){ 
				$("#tabs").tabs("add" ,{
					"id":node.id,
					"title":node.text,
					"closable":true,
					 "iconCls":node.attributes.icon, 
					/*  "href":node.attributes.url,  */ 
					"content":"<iframe src=' "+node.attributes.url+" ' width='100%' height='100%' frameborder='0'/>",
					 
				});
				 }else{
					 $("#tabs").tabs("select",node.text);
				} 
			 }
              
		});
	});
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',title:'江西汉腾汽车有限公司',split:true"
		style="height: 100px;">
		<h1 style="text-align: center;">仓库管理系统</h1>
	</div>
	<div data-options="region:'south',title:'South Title',split:true"
		style="height: 100px;">
		
	</div>
	<div data-options="region:'east',title:'待处理事项',split:true"
		style="width: 120px;"></div>
	<div data-options="region:'west',title:'系统',split:true"
		style="width: 200px;">
		<ul id="tt"></ul>
	</div>
	<div data-options="region:'center',title:'center title'"
		style="padding: 5px; background: #eee;">
		<div id="tabs" class="easyui-tabs" fit="true" ">
			
		</div>
		</div>
</body>

</html>