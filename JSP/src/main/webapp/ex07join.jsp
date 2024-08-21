<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ex07join.html에서 넘어온 회원의 정보를 web page에 출력 -->
	<% 
		request.setCharacterEncoding("EUC-KR");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String info = request.getParameter("info");

		out.println("id : " + id + "<br>");
		out.println("pw : " + pw + "<br>");
		out.println("gender : " + gender + "<br>");
		out.println("취미 : ");
		for(int i = 0; i < hobby.length; i++) {
			out.println(hobby[i]);
		}
		out.println("<br>");
		out.println("자기소개 : " + info);
	%>
</body>
</html>