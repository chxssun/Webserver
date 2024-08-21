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
		1번 메뉴를 드립니다
	</c:if>
	<c:if test="${menu == 2 }">
		2번 메뉴를 드립니다
	</c:if>
	
	<hr>
	
	<c:choose>
		<c:when test="${menu == 1 }">
			1번 메뉴를 드립니다
		</c:when>
		<c:when test="${menu == 2 }">
			2번 메뉴를 드립니다
		</c:when>
		<c:otherwise>
			메뉴가 없습니다.
		</c:otherwise>
	</c:choose>
</body>
</html>