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
		// ������ �����ϱ�
		
		// 1. session�ȿ� Ư�� name���� �����ϱ�
		session.removeAttribute("nickName");
		
		// 2. session ��ü�� �����Ű��
		session.invalidate();
	%>
</body>
</html>