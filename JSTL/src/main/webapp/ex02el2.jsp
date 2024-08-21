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
		request.setAttribute("name", "김창선");
		session.setAttribute("name", "최우식");
	%>
	<%--
		EL 찾는 순서
		page -> request -> session -> application
	 --%>
	${name}
	${sessionScope.name}
</body>
</html>