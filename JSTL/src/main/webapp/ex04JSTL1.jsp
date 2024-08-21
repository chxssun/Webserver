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
		변수만들기
	 --%>
	 <% pageContext.setAttribute("name", "<script>alert('메롱!');</script"); %>
	 <%-- <c:set var="name" value="김창선" scope="session" /> --%>
	 
	 <c:out value="${name }" />
</body>
</html>