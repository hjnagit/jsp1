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
//	response.sendRedirect("test1.jsp");
	// 바로 위의 페이지로 이동 - 리다이렉트
%>

<form action="testPro.jsp" method="get">

좋아하는 야구팀 : <br>
<input type="radio" name="love" value="키움">키움<br>
<input type="radio" name="love" value="롯데">롯데<br>
<input type="radio" name="love" value="삼성">삼성<br>

좋아하는 숫자 : <input type="text" name="num"><br>
<input type="submit" value="전송">

이름 :

</form>






</body>
</html>