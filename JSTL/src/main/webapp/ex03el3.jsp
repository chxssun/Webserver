<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% session.setAttribute("num", 10); %>
	
	<h3>���������</h3>
	${num + 5 } <br>
	${num - 5 } <br>
	${num * 2 } <br>
	${num / 2 } ${num div 2 } <br>
	${num % 3 } ${num mod 3 } <br>
	
	<h3>�񱳿�����</h3>
	${num > 5 } ${num gt 5 }<br>
	${num < 20 } ${num lt 20 } <br>
	${num >= 10 } ${num ge 10 } <br>
	${num <= 10 } ${num le 10 } <br>
	${num == 10 } ${num eq 10 } <br>
	${num != 20 } ${num ne 20 } <br>
	
	<h3>��������</h3>
	${num > 5 && num > 3 } ${num > 5 and num > 3 } <br>
	${num > 5 || num > 3 } ${num > 5 or num > 3 } <br>
	${!true } ${not true } <br>
	
	<h4>empty������</h4>
	<%
		session.setAttribute("love", "����");
	%>
	
	���� �����ϴ� �� : <%= session.getAttribute("love") %>
	<br>
	���� �����ϴ� �� : ${love }
	<br>
	���� �����ϴ� �� : <%= session.getAttribute("love1") %>
	<br>
	���� �����ϴ� �� : ${love1 }
	<br>
	${empty love1 }
	<br>
	${empty love }
	<br>
	${not empty love }
</body>
</html>