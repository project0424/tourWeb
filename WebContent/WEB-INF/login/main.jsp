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
<script type="text/javascript" src="js/myAccount.js"></script>
</head>
<body data-ng-controller="mainController">
	<!-- ############## -->
	<!-- Navigation Bar -->
	<!-- ############## -->
	<div class="header">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#/">Home</a>
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav" data-ng-show="login.status">
						<li class=""><a href="#/grid">Grid</a></li>
						<li class=""><a href="#">Page 2</a></li>
						<li data-ng-submit="select()" class="dropdown"><a
							class="dropdown-toggle" data-toggle="dropdown" href="">Page 3
								<span class="caret"></span>
						</a>
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
						<li><a href="#/login" data-ng-if="!login.status"><span
								class="glyphicon glyphicon-log-in"></span> Log in</a></li>
						<li><a href="#/myAccount" data-ng-if="login.status"><span
								class="glyphicon glyphicon-user"></span> {{login.user.id}}</a></li>
						<li><a href="#/" data-ng-if="login.status"
							data-ng-click="logout()"><span
								class="glyphicon glyphicon-log-out"></span> Log out</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<br>
	<br>
	<br>
	<!-- ################ -->
	<!-- ng-view Template -->
	<!-- ################ -->
	<div class="page {{ pageClass }}" data-ng-view
		data-ng-swipe-left="swipeLeft()" data-ng-swipe-right="swipeRight()">
		<!-- default page = home -->
	</div>


	<div ng-controller="TabsDemoCtrl">		
		<hr />
		<tabset>
			<tab heading="Static title">Static content</tab> 
			<tab ng-repeat="tab in tabs" heading="{{tab.title}}" 
				active="tab.active" disable="tab.disabled"> {{tab.content}} </tab> 
			<tab select="alertMe()"> 
				<tab-heading> 
					<i class="glyphicon glyphicon-bell"></i> 
					Alert! 
				</tab-heading> 
				I've got an HTML heading, and a select callback. Pretty cool! 
			</tab> 
		</tabset>

		<hr />

		<tabset vertical="true" type="pills"> <tab
			heading="Vertical 1">Vertical content 1</tab> <tab
			heading="Vertical 2">Vertical content 2</tab> </tabset>

		<hr />

		<tabset justified="true"> <tab heading="Justified">Justified
		content</tab> <tab heading="SJ">Short Labeled Justified content</tab> <tab
			heading="Long Justified">Long Labeled Justified content</tab> </tabset>
	</div>
</body>
</html>

