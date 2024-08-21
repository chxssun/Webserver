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
		// scope - �� ������ ������ �� �ִ� ����
		
		// page - jsp �ϳ��� ������������ ����Ǵ� ����
		// request - ��û�� ó���� �� ���Ǵ� ����
		// session - �ϳ��� �������� ���õ� ����
		// application - �� ���ø����̼ǰ� ���õ� ����
		
		// scope�� �� �ֱ�
	 	pageContext.setAttribute("page", "OK");
		request.setAttribute("request", "OK");
		session.setAttribute("session","OK");
		application.setAttribute("application", "OK");
	%>
	
	<%
		// scope�� ��������
		String result1 = (String)pageContext.getAttribute("page");
		String result2 = (String)request.getAttribute("request");
		String result3 = (String)session.getAttribute("session");
		String result4 = (String)application.getAttribute("application");
	%>
	
	<h2>���� ������ scope1</h2>
	<!-- scope�� ���������� ����ϱ� -->
	page : <%= result1 %><br>
	request : <%= result2 %><br>
	session : <%= result3 %><br>
	application : <%= result4 %><br>
	
	<%
		// ex01scope.jsp�� request�����ȿ� ������ �����͸�
		// ����� ex02scope.jsp�� request�� ������
		
		// forward(ing) 
		// - Client�� ���ο� �������� ��û(�̵�) �ؾ��Ҷ�
		//   Server�� �ش� ������ �����ִ� ���
		
		RequestDispatcher rd = request.getRequestDispatcher("ex02scope.jsp");
		rd.forward(request, response);
	%>

</body>
</html>