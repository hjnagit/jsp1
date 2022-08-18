<%@page import="study1.MemberBean"%>
<%@page import="study1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>updateForm.jsp</h1>

<h2>회원정보 수정 페이지</h2>

<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("loginID");
	
	if(id==null){
		response.sendRedirect("loginForm.jsp");
	}
	
	MemberDAO dao = new MemberDAO();
	
	MemberBean mb = dao.getMember(id);
	

%>
<fieldset>

<form action="updatePro.jsp" method="post" name="fr" onsubmit="return checkData();">

아이디 : <input type="text" name="id" value="<%=mb.getId() %>" readonly="readonly"><br>
비밀번호 : <input type="password" name="pw" placeholder="비밀번호를 입력하시오"><br>
이름 : <input type="text" name="name" value="<%=mb.getName() %>" ><br>
나이 : <input type="text" name="age" value="<%=mb.getAge() %>" ><br>
성별 : <input type="radio" name="gender" value="남" 
		<%if(mb.getGender().equals("남")){ %>
		checked="checked"
		<%} %>
		>남
		<input type="radio" name="gender" value="여" 
		<%if(mb.getGender().equals("여")){ %>
		checked="checked" 
		<%} %>
		>여<br>
이메일 : <input type="text" name="email" value="<%=mb.getEmail() %>" ><br>

<input type="submit" value="회원정보 수정하기">
</form>


</fieldset>

<script type="text/javascript">
function checkData(){
	var pw = document.fr.pw.value
	if(pw == "" || pw.length < 1){
		alert("비밀번호를 입력하세요.");
		document.fr.pw.focus();
		return false;
	}
}
</script>



</body>
</html>