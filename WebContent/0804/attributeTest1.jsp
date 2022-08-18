<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>attributeTest1.jsp</h1>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	if(name != null && id != null){
		application.setAttribute("name", name);
		application.setAttribute("id", id);
	}
%>
<h3><%=name %>님 반갑습니다<br>
<%=name %>님의 아이디는 <%=id %>입니다</h3>

<form action="attributeTest2.jsp" method="post">
e-mail : <input type="text" name="email"><br>
집주소 : <input type="text" name="address"><br>
><input type="submit" value="전송">
</form>


</body>
</html>