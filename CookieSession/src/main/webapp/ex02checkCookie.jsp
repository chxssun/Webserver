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
		// client�� ������ �ִ� ��Ű ��������
		Cookie[] cookies = request.getCookies();
		
		// ��Ű�迭�� �ִ� ��Ű���� �̸��� ����Ͻÿ�
		for(int i = 0; i < cookies.length; i++) {
			out.println(cookies[i].getName() + "-");
			out.println(cookies[i].getValue() + "<br>");
		}
		
	
	
	%>
</body>
</html>