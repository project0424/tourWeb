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
<script type="text/javascript" src="js/location.js"></script>
<script type="text/javascript" src="js/keyword.js"></script>
<script type="text/javascript" src="js/category.js"></script>


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
<body >
	<!-- ############## -->
	<!-- Navigation Bar -->
	<!-- ############## -->
	<div data-ng-controller="mainController">
		<nav class="navbar navbar-default">   
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand active" href="#/">Home</a>
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav" data-ng-show="login.status">
						<li><a href="#/category">분류별</a></li>
						<li><a href="#/location">지역별</a></li>
						<li><a href="#/keyword"><span class="glyphicon glyphicon-search"></span> 검색</a></li>
<!-- 						<li class="dropdown"> -->
<!-- 							<a class="dropdown-toggle"	data-toggle="dropdown" href="">Page 3 <span class="caret"></span></a> -->
<!-- 							<ul class="dropdown-menu"> -->
<!-- 								<li><a href="#">Page 3-1</a></li> -->
<!-- 								<li><a href="#">Page 3-2</a></li> -->
<!-- 								<li><a href="#">Page 3-3</a></li> -->
<!-- 								<li><a href="#">Page 3-4</a></li> -->
<!-- 							</ul> -->
<!-- 						</li> -->
<!-- 						<li><a href="#/about">About</a></li> -->
<!-- 						<li><a href="#/contact">Contact</a></li> -->
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
	
		<!-- ################ -->
		<!-- ng-view Template -->
		<!-- ################ -->
		<div class="page {{ pageClass }}" data-ng-view
			data-ng-swipe-left="swipeLeft()" data-ng-swipe-right="swipeRight()">
			<!-- default page = home -->
		</div>

		<hr />
		<tabset>
			<tab heading="Static title">Static content</tab> 
			<tab ng-repeat="tab in tabs" heading="{{tab.title}}" 
				active="tab.active" disable="tab.disabled">
				 {{tab.link}} 
				<h1>Location</h1>
				<div ng-controller="AccordionDemoCtrl">		
					<accordion close-others="oneAtATime">			
						<accordion-group data-ng-click="area($index)" data-ng-repeat="local in locals">
							<accordion-heading>
								{{local.name}} <i class="pull-right glyphicon" data-ng-class="{'glyphicon-chevron-down': !status.open}"></i>
							</accordion-heading>
							<ul class="list-group">
								<li class="container btn btn-default list-group-item" data-ng-click="info($index)" data-ng-repeat = "item in result.items">
							        {{item.name}}
								</li>
							</ul>	
						</accordion-group>
					</accordion>
				</div>
			</tab> 
		</tabset>
	</div>
</body>
</html>

