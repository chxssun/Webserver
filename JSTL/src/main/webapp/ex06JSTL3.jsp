<%@page import="com.MemberVO"%>
<%@page import="java.lang.reflect.Member"%>
<%@page import="java.util.ArrayList"%>
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
	<c:forEach var="i" begin="1" end="10" step="1">
		${i }
	</c:forEach>
	
	<hr>
	
	<% 
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
	
		MemberVO m1 = new MemberVO("김창선", 30);
		MemberVO m2 = new MemberVO("최영화", 30);
		MemberVO m3 = new MemberVO("이도연", 26);
		
		list.add(m1);
		list.add(m2);
		list.add(m3);
		
		session.setAttribute("list", list);
	%>
	
	<c:forEach items="${list }" var="vo">
		${vo.name } (${vo.age }) <br>
	</c:forEach>
	

</body>
</html>