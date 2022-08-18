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
<h1>deletePro.jsp</h1>

<%
	String id = (String)session.getAttribute("loginID");
	if(id == null){
		response.sendRedirect("loginForm.jsp");
	}
	
	 
	String pw = request.getParameter("pw");
	
	MemberDAO dao = new MemberDAO();
	
	int result = dao.deleteMember(id, pw);
	
	if(result == 1){
		session.invalidate();
		
		%>
			<script type="text/javascript">
				alert("회원탈퇴 성공!");
				location.href="main.jsp";
			</script>
		<%
	} else if(result == 0){
		%>
		<script type="text/javascript">
			alert("회원탈퇴 실패 - 비밀번호 오류!");
			history.back();
		</script>
		<%
	} else{
		%>
		<script type="text/javascript">
			alert("회원탈퇴 성공 - 회원정보 오류!");
			history.back();
		</script>
		<%
	}
	
	
%>



</body>
</html>