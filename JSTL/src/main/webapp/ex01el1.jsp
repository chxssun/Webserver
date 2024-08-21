<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- 
	EL(Expression Language) : 표현식
	JSP의 <%= %>와 동일하다
	단. 다른점은 EL은 무조건 scope영역안의 값만 가져올 수 있다
		scope영역 - (page, request, session, application) 
--%>
 	<%
 		session.setAttribute("id", "tthorr");
 	%>
 	
 	<%-- <%
 		String id = (String)session.getAttribute("id");
 	%>
 	
 	<%= id %>님 환영합니다! 
 	--%>

	<%-- EL표현식 ${변수 등} --%>
	${id}님 환영합니다!
	
	<%
		request.setAttribute("num", 20);
	%>
	
	<br>
	
	<%-- <%
		int num = (int)request.getAttribute("num");
	%>
	<%= num %>살 --%>
	
	<%-- EL표현식 ${변수 등} --%>
	${num}살
	
	<hr size="${num}" noshade="noshade">


</body>
</html>