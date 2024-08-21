<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML주석 -->
	<% // java주석 %>
	<%--jsp주석 --%>
	<%--
		선언문
		필드나 메소드를 만들기 위해 사용하는 문법
	 --%>
	 <%!
	 	// 필드
	 	private String name="김창선";
	 	public String hello() {
	 		return "hello";
	 	}
	 %>
	 <%
	 	String team = "자바를 잡아라!";
	 %>
	 <%= hello() %>
	
</body>
</html>