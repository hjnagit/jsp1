<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>sessionMain.jsp</h1>

<%

	String id = (String)session.getAttribute("id");

%>
<%=id %>님 환영합니다.<br>

<input type="button" onclick="location.href='logoutPro.jsp'" value="로그아웃">



</body>
</html>