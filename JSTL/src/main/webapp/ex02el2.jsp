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
		request.setAttribute("name", "��â��");
		session.setAttribute("name", "�ֿ��");
	%>
	<%--
		EL ã�� ����
		page -> request -> session -> application
	 --%>
	${name}
	${sessionScope.name}
</body>
</html>