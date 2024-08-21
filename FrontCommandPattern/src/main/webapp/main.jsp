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
		      <a class="navbar-brand" href="#">WebSiteName</a>
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
		  <div class="panel-heading">메인페이지</div>
		  <div class="panel-body">
		  	
		  	
		  	<!-- 로그인을 안했을때 -->
		  	<c:if test="${empty info }">
			  	<a href="login.jsp"><button class="btn btn-primary">로그인</button></a>	
			  	<a href="join.jsp"><button class="btn btn-success">회원가입</button></a>
		  	</c:if>
		  	
		  	<!-- 로그인을 했을때 -->
		  	<c:if test="${not empty info }">
			  	<c:out value="${info.nick }"/>님 Welcome!
			  	<a href="LogoutController" class="btn btn-danger">로그아웃</a>
			  	
			  	<!-- 아이디가 admin인 사람만 -->
			  	<c:if test="${info.id eq 'admin' }">
				  	<a href="ListController" class="btn btn-info">회원정보</a>			  	
			  	</c:if>
		  	</c:if>
		  	
		  </div>
		  <div class="panel-footer">웹기반 인공지능 Track2 (B) - 김창선</div>
		</div>
		
	</div>
</body>
</html>