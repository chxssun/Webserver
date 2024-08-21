<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String nick = (String)session.getAttribute("nick");
	%>
	<% if(nick != null){ %>
		'<%= nick %>' 님 환영합니다!
		<a href="ex07LogoutService">로그아웃</a>
	<% }else{ %>
		<a href="ex07login.jsp">로그인 페이지로 이동</a>
	<% } %>		
</body>
</html>