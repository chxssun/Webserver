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
		// ��Ű �����ϱ�
		// - �ƽ��Ե� ��Ű�� �����ϴ� �޼ҵ峪 �ڵ�� ����
		
		// - ������ ��¥ �����ϰ� �ʹٸ� ����� �ִ�.
		Cookie cookie = new Cookie("visit", "");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	%>
</body>
</html>