<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>修改页面</title>

</head>
<body>
<form action="<%=basePath  %>viewShops" method="post">
<table border="1" cellspacing="0">
<tr>
<th>商品编号：</th>
 <td ><input type="text" value="${prolists.id }" name="id" > </td> 

</tr>
<tr>
<th >商品名称：</th>
 <td ><input type="text" value="${prolists.goodsname }" name="goodsname"> </td> 
</tr>
<tr>
<th>商品价格：</th>
 <td ><input type="text" value="${prolists.goodsprice }" name="goodsprice"></td> 
</tr>
<tr>
<th>库存数量：</th>
 <td ><input type="text" value="${prolists.goodscount }" name="goodscount"></td> 
</tr>
<tr>
<th>订单状态：</th>
 <td ><input type="text" value="${prolists.billstatus }" name="billstatus"></td>
</tr>
<tr>

<td colspan="2"> 
<input type="submit" value="提交">

<input type="button" value="返回" onclick="fanhui()">

</td>
</tr>
</table>
</form>
</body>
<script src="jquery-1.8.3.min.js"></script>
<script type="text/javascript">

	function fanhui(){
		window.history.go(-1);
	}
	

</script>
</html>