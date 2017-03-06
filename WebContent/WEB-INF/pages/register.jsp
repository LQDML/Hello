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
<title>Insert title here</title>
</head>
<body>
<form action="<%= basePath %>user/registerUser" method="post">
		<table height="50%" width="50%">
			<tr>
				<th>用户名</th>
				<td>
					<input type="text" name="userName" />
				</td>
			</tr>
			<tr>
				<th>密码</th>
				<td>
					<input type="text" name="password" />
				</td>
			</tr>
			<tr>
				<th>年龄</th>
				<td>
					<input type="text" name="age" />
				</td>
			</tr>
			<!-- <tr>
				<th>生日</th>
				<td>
					<input type="text" name="birthday" />
				</td>
			</tr>
			<tr>
				<th>电话</th>
				<td>
					<input type="text" name="phoneNumber" />
				</td>
			</tr> -->
			<tr>
				<td colspan="2" align="center">
					<br/>
					<input type="submit" value="提交按钮" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>