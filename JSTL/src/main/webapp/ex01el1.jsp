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
	EL(Expression Language) : ǥ����
	JSP�� <%= %>�� �����ϴ�
	��. �ٸ����� EL�� ������ scope�������� ���� ������ �� �ִ�
		scope���� - (page, request, session, application) 
--%>
 	<%
 		session.setAttribute("id", "tthorr");
 	%>
 	
 	<%-- <%
 		String id = (String)session.getAttribute("id");
 	%>
 	
 	<%= id %>�� ȯ���մϴ�! 
 	--%>

	<%-- ELǥ���� ${���� ��} --%>
	${id}�� ȯ���մϴ�!
	
	<%
		request.setAttribute("num", 20);
	%>
	
	<br>
	
	<%-- <%
		int num = (int)request.getAttribute("num");
	%>
	<%= num %>�� --%>
	
	<%-- ELǥ���� ${���� ��} --%>
	${num}��
	
	<hr size="${num}" noshade="noshade">


</body>
</html>