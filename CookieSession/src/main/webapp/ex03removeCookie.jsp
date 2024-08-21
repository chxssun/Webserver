<%@page import="javax.servlet.http.Cookie"%>
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
		// 쿠키 삭제하기
		// - 아쉽게도 쿠키를 삭제하는 메소드나 코드는 없다
		
		// - 하지만 진짜 삭제하고 싶다면 편법은 있다.
		Cookie cookie = new Cookie("visit", "");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	%>
</body>
</html>