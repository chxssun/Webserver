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
	<% pageContext.setAttribute("menu", 1); %>
	
	<c:if test="${menu == 1 }">
		1�� �޴��� �帳�ϴ�
	</c:if>
	<c:if test="${menu == 2 }">
		2�� �޴��� �帳�ϴ�
	</c:if>
	
	<hr>
	
	<c:choose>
		<c:when test="${menu == 1 }">
			1�� �޴��� �帳�ϴ�
		</c:when>
		<c:when test="${menu == 2 }">
			2�� �޴��� �帳�ϴ�
		</c:when>
		<c:otherwise>
			�޴��� �����ϴ�.
		</c:otherwise>
	</c:choose>
</body>
</html>