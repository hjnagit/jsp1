<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>login_main.jsp</h1>
<%
Cookie[] c = request.getCookies();
if(c != null){
	for(Cookie ck : c){
		if(ck.getName().equals("id")){
			response.sendRedirect("sessionMain.jsp");
		}
	}
}


%>


<form action="sessionLoginPro.jsp">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="text" name="pw"><br>
<input type="checkbox" name="loginchk" value="true"> 로그인 상태 유지<br>
<input type="submit" value="로그인"><br>
</form>


</body>
</html>