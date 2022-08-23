<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>paramPro.jsp</h1>

<h2>전달된 객체 출력</h2>
<%
	request.setCharacterEncoding("UTF-8");
%>


예전에는 이렇게 받아왔으나 

ID : ${param.id }<br>
hobby : ${paramValues.hobby[0] }<br>
hobby : ${paramValues.hobby[1] }<br>
hobby : ${paramValues.hobby[2] }<br>

food : ${paramValues.food[0] }<br>
food : ${paramValues.food[1] }<br>
food : ${paramValues.food[2] }<br>


</body>
</html>