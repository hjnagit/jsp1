<%@page import="study1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>loginPro.jsp</h1>
<%
	request.setCharacterEncoding("UTF-8");
%>
 
<jsp:useBean id="mb" class="study1.MemberBean"/>
<jsp:setProperty property="*" name="mb"/>

<%
	MemberDAO dao = new MemberDAO();
	int result = dao.loginMember(mb);
	
	if(result == 1){
		session.setAttribute("loginID", mb.getId());
		%>
			<script type="text/javascript">
				alert("로그인 성공!");
				location.href = "main.jsp";
			</script>
		<%
	} else{
		%>
		<script type="text/javascript">
			alert("로그인 실패!");
			history.back();
		</script>
	<%
	}

%>




</body>
</html>