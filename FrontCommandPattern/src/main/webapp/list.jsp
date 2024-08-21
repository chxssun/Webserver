<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="main.jsp">WebSiteName</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="#">Home</a></li>
		      <li><a href="#">Page 1</a></li>
		      <li><a href="#">Page 2</a></li>
		      <li><a href="#">Page 3</a></li>
		    </ul>
		  </div>
		</nav>
	
		<div class="jumbotron">
		  <h1>Bootstrap Tutorial</h1>
		  <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing
		  responsive, mobile-first projects on the web.</p>
		</div>
	  
	  
		<div class="panel panel-default">
		  <div class="panel-heading">����������</div>
		  <div class="panel-body">
		  	
		  	<table class="table table-bordered table-hover">
		  		<tr>
		  			<td>ID</td>
		  			<td>PW</td>
		  			<td>NICK</td>
		  		</tr>
		  		
		  		<!-- JSTL�� ���ؼ� ȸ���� ������ ��� -->
		  		<c:forEach var="vo" items="${list }">
		  			<tr>
			  			<td><c:out value="${vo.id }"/></td>
			  			<td><c:out value="${vo.pw }"/></td>
			  			<td><c:out value="${vo.nick }"/></td>
			  		</tr>
		  		</c:forEach>
		  	</table>
		  	
		  </div>
		  <div class="panel-footer">����� �ΰ����� Track2 (B) - ��â��</div>
		</div>
		
	</div>
</body>
</html>