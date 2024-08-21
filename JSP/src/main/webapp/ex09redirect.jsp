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
		Redirect 방식
		  - client에게 요청(접속)할 url을 전달하여
		    client 가 다시 서버로 해당 문서을 요청(이동) 하는 방식
	 --%>
	 <%
	 	// Redirect를 통해 네이버 페이지 요청(이동)하기
	 	response.sendRedirect("http://www.naver.com");
	 
	 %>
</body>
</html>