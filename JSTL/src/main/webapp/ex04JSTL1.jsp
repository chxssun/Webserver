<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		���������
	 --%>
	 <% pageContext.setAttribute("name", "<script>alert('�޷�!');</script"); %>
	 <%-- <c:set var="name" value="��â��" scope="session" /> --%>
	 
	 <c:out value="${name }" />
</body>
</html>