<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 나이에 따라서 web Page에 다르게 보여주기 -->
	<%
		// int age  = 31;
		// if(age >= 40) { %>
			<!-- <h1>당신은 불혹의 나이군요</h1> -->
	<% // } else if(age >= 30) { %>
			<!-- <h1>당신은 이립의 나이군요</h1> -->
	<%//} %>

	<%
		int age = 31;
		if(age >= 40) {
			out.println("<h1>당신은 불혹의 나이입니다</h1>");
		}else if(age >= 30) {
			out.println("<h1>당신은 이립의 나이입니다</h1>");
		}else if(age >= 20) {
			out.println("<h1>당신은 약관의 나이입니다</h1>");
		}
	%>
</body>
</html>