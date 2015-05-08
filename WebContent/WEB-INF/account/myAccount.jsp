<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<title>myAccount.jsp</title>
<%@include file="/template.jspf"%>
<%@include file="/style.jspf"%>
</head>
<body data-ng-controller="myController">
	<div class="topsection">
  		<div>Refrigerator Management App</div>
	</div>
	<div class="containe-fluid topnavcontainer"></div>

	<div class="container">
		<div class="jumbotron">
	    	<form class="form" action="login" method="post">
				<div class="form-group form-block">
			      	<input type="email" class="form-control" name="email" id="email" placeholder="${member.email}">
			      	<input type="password" class="form-control" name="password" id="password" placeholder="Enter password">
	    		</div>
				<button type="submit" class="btn btn-info btn-block">로그인</button>
			</form>
			<hr>
			<a href="/refrigeratorweb/m/join" class="btn btn-default">회원가입</a>
	  	</div>
	</div>
</body>
</html>