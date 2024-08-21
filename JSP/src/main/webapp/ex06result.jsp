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
		// 한글인코딩
		request.setCharacterEncoding("EUC-KR");
		// 내장 객체
		String text = request.getParameter("text");
	%>
	입력한 데이터 : <%= text %>
	
	
</body>
</html>