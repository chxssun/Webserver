<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		  <div class="panel-heading">회원가입</div>
		  <div class="panel-body">
		  	<form action="join.do" method="post">
			  <div class="form-group">
			    <label for="id"> ID : </label>
			    <input name="id" type="text" class="form-control" id="id">
			  </div>
			  <div class="form-group">
			    <label for="pw"> PW : </label>
			    <input name="pw" type="password" class="form-control" id="pw">
			  </div>
			  <div class="form-group">
			    <label for="nick"> NICK : </label>
			    <input name="nick" type="text" class="form-control" id="nick">
			  </div>
			  <button type="reset" class="btn btn-danger">RESET</button>
			  <button type="submit" class="btn btn-info">JOIN</button>
			</form>
		  </div>
		  <div class="panel-footer">웹기반 인공지능 Track2 (B) - 김창선</div>
		</div>
		
	</div>
</body>
</html>