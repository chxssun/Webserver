<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		���� ex08random.html���� �Է��� 
		������ �������� ���������� ǥ���Ͻÿ�
		
		�� ���� �������� �ϳ��� �������� �̾Ƽ� ǥ���մϴ�
	 --%>
	 <% 
	 	request.setCharacterEncoding("EUC-KR");
	 
		String title = request.getParameter("title");

		String[] item = request.getParameterValues("item");
	 	
		Random rd = new Random();
		
		int ran = rd.nextInt(item.length);
	 %>
	
	<%= title %> - <%= item[ran] %>
</body>
</html>