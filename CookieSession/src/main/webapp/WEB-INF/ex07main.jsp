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
		// 로그인 성공한 사람의 nick을 웹페이지에 표현
		String nick = (String)session.getAttribute("nick");
	%>
	'<%= nick %>'님 환영합니다.
</body>
</html>