<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>结果</title>
</head>
<body>
${msg }
${person.username }<br/>
	${person.password }<br/>
	${person.ages }<br/>
	<fmt:formatDate value="${person.birthday }" pattern="yyyy年MM月dd日" /><br/> 
	
	${person.phonenumber }
</body>
</html>