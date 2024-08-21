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
		// Session - Client�� ������ ������ �����ϴ� ��
		
		// Ư¡
		// 1. Session���� Object���·� ���尡��(�ٰ���)
		// 2. �뷮������ ���� �������� �ʴ´�
		// 3. ������ �������� �ϳ��� �߱��� �ȴ�.
		// 	- ������ �������� �����ϴ� ���� ���ᰡ �ȴ�
		// 	- ������ ����ð��� �⺻ 30���̴�(�ƹ� �ൿ ���ϰ�)
		// 4. Cookie�� ���� ��������� ���ȿ� �����ϴ�
		
		// ���ǿ� ���� �����ϱ�
		// - ���ǿ� ���� �����ϴ� ����
		// ��� �����͵� �� Object�� ��ȯ�ȴ�(��ĳ����)
		session.setAttribute("nickName", "õ��");
	
		// ���ǿ� �����ֱ�
		session.setMaxInactiveInterval(80);
		
		// ����ȿ� ����� �� Ȯ���ϱ�
		// - ���Ǿȿ� ����� �����ʹ� �� Object�� ����Ǿ� �ִ�
		// ���ϴ� ������ Ÿ������ ����ϱ� ���ؼ���
		// �ڽĵ����� Ÿ������ ��ȯ������Ѵ� (�ٿ�ĳ����)
		String nickName = (String)session.getAttribute("nickName");
	
	%>
	<%= nickName %>�� ȯ���մϴ�!
</body>
</html>