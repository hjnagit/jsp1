<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>main.jsp</h1>

<%

	String id = (String)session.getAttribute("loginID");
	if(id==null){
		System.out.println("로그인 정보 없음!");
		response.sendRedirect("loginForm.jsp");
	}

%>
<h2><%=id %>님 환영합니다.</h2>

<input type="button" value="로그아웃" onclick="location.href='logout.jsp';"><br>

<a href="info.jsp">회원정보 조회하기</a><br>
<a href="updateForm.jsp">회원정보 수정하기</a><br>
<a href="deleteForm.jsp">회원정보 삭제하기</a><br>




</body>
</html>