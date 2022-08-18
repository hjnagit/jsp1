<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>result.jsp</h1>
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(!id.equals("collb")){
	%>
		<script type="text/javascript">
			alert("사용자를 찾을 수 없습니다.")
		</script>
	<%
	response.sendRedirect("input.jsp");
} else if(!pw.equals("1234")){
	%>
	<script type="text/javascript">
		alert("비밀번호가 일치하지 않습니다.")
	</script>
	<%
	response.sendRedirect("input.jsp");
}

%>





이름 : <%=name%><br>
아이디 : <%=id%><br>
비밀번호 : <%=pw%><br>


</body>
</html>