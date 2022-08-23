<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>paramTest.jsp</h1>

<form action="paramPro.jsp" method="post">
아이디 : <input type="text" name="id"><br>
취미1 : <input type="text" name="hobby"><br>
취미2 : <input type="text" name="hobby"><br>
음식 : <input type="checkbox" name="food" value="김치찌개">김치찌개
 <input type="checkbox" name="food" value="된장찌개">된장찌개
 <input type="checkbox" name="food" value="부대찌개">부대찌개<br>
<hr>
<input type="submit" value="전달하기">
</form>


</body>
</html>