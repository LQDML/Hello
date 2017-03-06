<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert </title>
</head>
<body>
<h1>首页</h1>
<%--  <a href="<%=basePath  %>user/test">注册</a><br/>
<a href="<%=basePath  %>person/show">person注册</a>
<a href="<%=basePath  %>test">显示</a>  --%>
<a href="<%=basePath  %>view">显示商品信息</a> 

</body>
</html>