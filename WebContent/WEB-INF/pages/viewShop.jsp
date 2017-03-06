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
<title>展示页面</title>
</head>
<body>
<table border="1" cellspacing="0">
<tr>
<th>商品编号</th>
<th>商品名称</th>
<th>商品价格</th>
<th>库存数量</th>
<th>订单状态</th>
<th>操作</th>
</tr>
<c:forEach items="${prolist }" var="var">
<tr>
<td>${var.id }</td>
<td>${var.goodsname }</td>
<td>${var.goodsprice }</td>
<td>${var.goodscount }</td>
<td>${var.billstatus }</td>
<td><a href="<%=basePath  %>xiugai?id=${var.id }">修改</a></td>

</tr>
</c:forEach>
</table>
</body>
</html>