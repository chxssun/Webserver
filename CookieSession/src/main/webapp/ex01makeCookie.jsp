<%@page import="org.apache.catalina.connector.Response"%>
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
		// ��Ű - Client�� ������ ������Ű�� ���� ��� �� �ϳ�
		// Ư¡
		// 1. ��Ű�� Client�� ������(PC)�� ����ȴ�.
		// 2. Text���¸� ���� ������ �� �ִ�
		// 3. �����δ� 20��, ��Ű�ϳ��� 4KB
		// 4. Session�� ���� ��������� ���ȿ� ����ϴ�
		
		// 1. ��Ű �����
		Cookie cookie = new Cookie("visit", "ok");
		
		// 2. ��Ű�� ������� ���ϱ�
		cookie.setMaxAge(60*60*24*365);
		
		// 3. ��Ű ������
		response.addCookie(cookie);
	%>
</body>
</html>