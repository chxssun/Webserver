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
		// scope�� ��������
		String result1 = (String)pageContext.getAttribute("page");
		String result2 = (String)request.getAttribute("request");
		String result3 = (String)session.getAttribute("session");
		String result4 = (String)application.getAttribute("application");
	%>
	
	<h2>���� ������ scope2</h2>
	<!-- scope�� ���������� ����ϱ� -->
	page : <%= result1 %><br>
	request : <%= result2 %><br>
	session : <%= result3 %><br>
	application : <%= result4 %><br>

</body>
</html>