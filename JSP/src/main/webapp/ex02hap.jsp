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
	int sum = 0;
	for(int i = 5; i <= 682; i++) {
		sum += i;
	}
	%>
	5���� 682������ ���� = <%= sum %>
	
</body>
</html>