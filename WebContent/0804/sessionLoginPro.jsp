<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>sessionLoginPro.jsp</h1>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String lc = request.getParameter("loginchk");
	
	//기존 디비의 사용자 id, pw
	String dbid="luv";
	String dbpw="1234";
	
	if(dbid.equals(id)){
		if(dbpw.equals(pw)){
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			
			if(lc != null){
				Cookie c =new Cookie("id", id);
			}
			
			
			%>
			
			<script type="text/javascript">
				alert("인증되었습니다.");
				location.href = "sessionMain.jsp"
			</script>
			
			<%
		} else{
			%>
			<script type="text/javascript">
				alert("비밀번호가 다릅니다.");
				location.href = "login_main.jsp"
			</script>
			<%
		}
	} else{
		%>
		<script type="text/javascript">
			alert("아이디가 다릅니다.");
			location.href="login_main.jsp"
		</script>
		<%
	}
%>


</body>
</html>