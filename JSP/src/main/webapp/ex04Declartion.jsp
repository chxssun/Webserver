<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML�ּ� -->
	<% // java�ּ� %>
	<%--jsp�ּ� --%>
	<%--
		����
		�ʵ峪 �޼ҵ带 ����� ���� ����ϴ� ����
	 --%>
	 <%!
	 	// �ʵ�
	 	private String name="��â��";
	 	public String hello() {
	 		return "hello";
	 	}
	 %>
	 <%
	 	String team = "�ڹٸ� ��ƶ�!";
	 %>
	 <%= hello() %>
	
</body>
</html>