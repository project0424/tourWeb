<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>main.jsp</title>
<%@include file="/login/jspf/template.jspf"%>
<link rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/home.js"></script>
<script type="text/javascript" src="js/grid.js"></script>
<script type="text/javascript" src="js/about.js"></script>
<script type="text/javascript" src="js/contact.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/signup.js"></script>

<style type="text/css">
.topsection {
	width: 100%;
	overflow: auto;
	padding: 20px 30px 10px 28px;
}

.topsection img {
	float: left;
	vertical-align: bottom;
}

.topsection div {
	float: right;
	padding-top: 14px;
	letter-spacing: 4px;
	font-family: Arial !important;
}

.topnavcontainer {
	height: 10px;
	background-color: #33CCFF;
}
</style>

</head>
<body data-ng-controller="mainController">
	<!-- ############## -->
	<!-- Navigation Bar -->
	<!-- ############## -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand active" href="#/">Home</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav" data-ng-show="login.status">
					<li><a href="#/grid">Grid</a></li>
					<li><a href="#">Page 2</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="">Page 3 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 3-1</a></li>
							<li><a href="#">Page 3-2</a></li>
							<li><a href="#">Page 3-3</a></li>
							<li><a href="#">Page 3-4</a></li>
						</ul></li>
					<li><a href="#/about">About</a></li>
					<li><a href="#/contact">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#/signup" data-ng-if="!login.status">
						<span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
					<li><a href="#/login" data-ng-if="!login.status"><span
							class="glyphicon glyphicon-log-in"></span> Log in</a></li>
					<li><a href="#/" data-ng-if="login.status"
						data-ng-click="logout()"><span
							class="glyphicon glyphicon-user"></span> My Account</a></li>
					<li><a href="#/" data-ng-if="login.status"
						data-ng-click="logout()"><span
							class="glyphicon glyphicon-log-out"></span> Log out</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- ################ -->
	<!-- ng-view Template -->
	<!-- ################ -->
	<div class="page {{ pageClass }}" data-ng-view
		data-ng-swipe-left="swipeLeft()" data-ng-swipe-right="swipeRight()">
		<!-- default page = home -->
	</div>

</body>
</html>

