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
		// today 올리기
		String today = (String)application.getAttribute("today");
		
		if(today == null){
			application.setAttribute("today", "1");
		}else {
			int num = Integer.parseInt(today);
			num++;
			String re = num+"";
			application.setAttribute("today", re);
		}

		out.println("오늘 방문자 수 : " + today);
	%>
	


</body>
</html>