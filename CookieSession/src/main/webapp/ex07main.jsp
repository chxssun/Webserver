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
		String nick = (String)session.getAttribute("nick");
	%>
	<% if(nick != null){ %>
		'<%= nick %>' �� ȯ���մϴ�!
		<a href="ex07LogoutService">�α׾ƿ�</a>
	<% }else{ %>
		<a href="ex07login.jsp">�α��� �������� �̵�</a>
	<% } %>		
</body>
</html>