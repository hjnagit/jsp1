<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	response.setHeader("Refresh", "3; url=http://www.naver.com");
	


%>

<%=request.getServerName() %><br>
<%=request.getServerPort() %><br>
<%=request.getRequestURI() %><br>
<%=request.getRequestURL() %>





</body>
</html>