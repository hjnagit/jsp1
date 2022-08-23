<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>core_set.jsp</h1>
<c:out value="안녕하세요"/>

<%
	int num1 = 10;
	int num2 = 20;

%>

<c:out value="<%=num1+num2 %>"/>
<c:out value="${20+30 }"/>


<hr>
<hr>

@@<c:out value="${itwill.name }" default="null입니다"/>@@

< abc >
&lt;abc>


<c:out value="<abc>태그"/>


<h1> 변수 </h1>
<c:set var="c" value="100"  />
<c:set var="b" value="100"  />

<c:set var="e" value="${c+b }"/>

${e }


<hr>
<hr>
<hr>
<hr>
<hr>
<c:set var="name" value="itwill"/>

<c:if test="${name eq 'itwill' }">
	itwill님 안녕하세요
</c:if>

<c:choose>
	<c:when test="${10>20 }">
		10이 더 크다<br>
	</c:when>
	<c:when test="${10<20 }">
		20이 더 크다<br>
	</c:when>
	<c:otherwise>
		<c:if test="${10 != 20 }">
		
		다른 값<br>
		</c:if>
	</c:otherwise>

</c:choose>

<hr>
<hr>
<hr>
<hr>
<hr>

<c:forEach var="i" begin="1" end="10" step="2">
	${i }
</c:forEach>

<c:forEach var="i" begin="1" end="10" step="1">
	<c:if test="${i%2==0 }">
		${i }
	</c:if>
</c:forEach>



<hr>
<hr>
배열
<hr>
<hr>

<%
	String[] strarr = {"sdf", "sfe", "sef", "3resf", "sdfe"};
	pageContext.setAttribute("strarr", strarr);
%>

<c:forEach var="str" items="${strarr }">
	${str }
</c:forEach>



<hr>
<c:forTokens var="tk" items="a.s.d.w.fd.f.d" delims=".">
${tk }

</c:forTokens>

<hr>
<hr>
<hr>
<hr>
<hr>
<hr>

<fmt:formatNumber value="100000000"/>

<%

	pageContext.setAttribute("money", 100000);
%>

<fmt:formatNumber value="${money }" type="currency" currencySymbol="$"/>


<fmt:formatNumber value="3.12314" pattern="#.000"/>


<fmt:formatNumber value="${23/45 }" type="percent"/>



<hr>
<hr>
<hr>
<hr>
<hr>

<c:set var="today" value="<%=new Date() %>"/>

<fmt:formatDate value="${today }"/><br>
<fmt:formatDate value="${today }" type="time"/><br>
<fmt:formatDate value="${today }" type="both"/><br>

<fmt:formatDate value="${today }" dateStyle="full"/><br>
<fmt:formatDate value="${today }" dateStyle="medium"/><br>
<fmt:formatDate value="${today }"/><br>
<fmt:formatDate value="${today }"/><br>


<fmt:formatDate value="${today }" type="time" timeStyle="full"/><br>


<fmt:formatDate value="${today }" type="both" dateStyle="short" timeStyle="long"/><br>


<fmt:formatDate value="${today }" pattern="yy/MM/dd (E)"/>
<fmt:formatDate value="${today }" type="time" pattern="(a) hh:mm:ss"/>






</body>
</html>