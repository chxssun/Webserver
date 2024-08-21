<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1px" solid="black">
		<tr>
			<%
			int num=0;
			for(int i = 1; i<=10; i++) {
				num++;
			%>
			<td><%=num %></td>
			<%
			}
			%>
		</tr>
		<tr>
			<%for(int i = 1; i <= 10; i++){ %>
				<td><%=i %> </td>
			<%} %>
		</tr>
		<tr>
			<%
			String res="";
			for(int i = 1; i <= 10; i++) {
				res += "<td>"+i+"</td>";
			}
			%>
			<%=res%>
		</tr>
	</table>
</body>
</html>