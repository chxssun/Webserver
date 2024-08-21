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
		문제 ex08random.html에서 입력한 
		주제와 아이템을 웹페이지에 표현하시오
		
		단 여러 아이템중 하나만 램덤으로 뽑아서 표현합니다
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