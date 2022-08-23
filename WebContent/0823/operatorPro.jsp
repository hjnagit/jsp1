<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>operatorPro.jsp</h1>


el : ${param.num1 } + ${param.num2 } = ${param.num1 + param.num2 }


<h2>데이터가 양수인지 확인</h2>
${((param.num1 gt 0) && (param.num2 gt 0)) ? "모두양수" : "아니다" }


</body>
</html>