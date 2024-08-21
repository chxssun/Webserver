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
		// client가 가지고 있는 쿠키 가져오기
		Cookie[] cookies = request.getCookies();
		
		// 쿠키배열에 있는 쿠키들의 이름을 출력하시오
		for(int i = 0; i < cookies.length; i++) {
			out.println(cookies[i].getName() + "-");
			out.println(cookies[i].getValue() + "<br>");
		}
		
	
	
	%>
</body>
</html>