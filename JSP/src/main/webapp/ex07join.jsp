<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ex07join.html���� �Ѿ�� ȸ���� ������ web page�� ��� -->
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
		out.println("��� : ");
		for(int i = 0; i < hobby.length; i++) {
			out.println(hobby[i]);
		}
		out.println("<br>");
		out.println("�ڱ�Ұ� : " + info);
	%>
</body>
</html>