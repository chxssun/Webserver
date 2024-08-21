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
		// 세션을 만료하기
		
		// 1. session안에 특정 name값만 삭제하기
		session.removeAttribute("nickName");
		
		// 2. session 전체를 만료시키기
		session.invalidate();
	%>
</body>
</html>