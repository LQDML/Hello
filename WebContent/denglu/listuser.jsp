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
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$("#dg").datagrid({
		width:700,
		height:180,
		idField:"id",
		url:"checkNames",
		
		columns:[[
		  		{field:"id",title:'编号',width:100},
		  		{field:"username",title:'用户名',width:130},
		  		{field:"password",title:'密码',width:130}
		      ]],
	pagination:true,
	pageSize:3,
	pageList:[3,6,9],
	});
	
	
});
</script>
</head>
<body>
<h1>用户信息</h1>
<table id="dg"></table>
</body>
</html>