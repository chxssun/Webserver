<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ���̿� ���� web Page�� �ٸ��� �����ֱ� -->
	<%
		// int age  = 31;
		// if(age >= 40) { %>
			<!-- <h1>����� ��Ȥ�� ���̱���</h1> -->
	<% // } else if(age >= 30) { %>
			<!-- <h1>����� �̸��� ���̱���</h1> -->
	<%//} %>

	<%
		int age = 31;
		if(age >= 40) {
			out.println("<h1>����� ��Ȥ�� �����Դϴ�</h1>");
		}else if(age >= 30) {
			out.println("<h1>����� �̸��� �����Դϴ�</h1>");
		}else if(age >= 20) {
			out.println("<h1>����� ����� �����Դϴ�</h1>");
		}
	%>
</body>
</html>