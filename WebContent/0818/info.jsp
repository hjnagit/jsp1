<%@page import="study1.MemberBean"%>
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
<h1>info.jsp</h1>

<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) session.getAttribute("loginID");
	
	if(id==null){
		response.sendRedirect("loginForm.jsp");
	}

%>


<%
	MemberDAO dao = new MemberDAO();
	MemberBean mb = dao.getMember(id);
%>

아이디 : <%=mb.getId() %><br>
비밀번호 : <%=mb.getPw() %><br>
이름 : <%=mb.getName() %><br>
나이 : <%=mb.getAge()%><br>
성별 : <%=mb.getGender()%><br>
이메일 : <%=mb.getEmail() %><br>
회원가입일 : <%=mb.getRegdate() %><br>
 
<a href='main.jsp'>메인으로 돌아가기</a>


</body>
</html>