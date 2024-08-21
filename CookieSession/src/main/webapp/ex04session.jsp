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
		// Session - Client의 정보를 서버에 저장하는 곳
		
		// 특징
		// 1. Session에는 Object형태로 저장가능(다가능)
		// 2. 용량제한이 따로 존재하지 않는다
		// 3. 세션은 브라우저당 하나씩 발급이 된다.
		// 	- 세션은 브라우저를 종료하는 순간 만료가 된다
		// 	- 세션의 만료시간은 기본 30분이다(아무 행동 안하고)
		// 4. Cookie에 비해 상대적으로 보안에 강력하다
		
		// 세션에 값을 저장하기
		// - 세션에 값을 저장하는 순간
		// 어떠한 데이터든 다 Object로 변환된다(업캐스팅)
		session.setAttribute("nickName", "천둥");
	
		// 세션에 생명주기
		session.setMaxInactiveInterval(80);
		
		// 세언안에 저장된 값 확인하기
		// - 세션안에 저장된 데이터는 다 Object로 저장되어 있다
		// 원하는 데이터 타입으로 사용하기 위해서는
		// 자식데이터 타입으로 변환해줘야한다 (다운캐스팅)
		String nickName = (String)session.getAttribute("nickName");
	
	%>
	<%= nickName %>님 환영합니다!
</body>
</html>