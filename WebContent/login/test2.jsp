<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>test2.jsp</title>
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

<script type="text/javascript">
app.controller("mainController", function($scope, $http, $location) {
	$scope.submit = function() {
		alert("!!!!!!!!!!!!!1");
		$http.post("../m/areacode/areacode", {areacode : $scope.areacode}).success(function(result) {
			alert("성공" + "	:	" + JSON.stringify(result));
			$scope.result = result;
		}).error(function(result) {
			alert("실패" + " : " + JSON.stringify(result));
		});
	};
	
	$scope.info = function($index) {
		var code = $scope.result.items[$index].code;
		alert(code);
		$http.post("../m/areacode/sigungu", {sigungucode : code}).success(function(result) {
			alert("성공" + "	:	" + JSON.stringify(result));
			$scope.result = result;
		}).error(function(result) {
			alert("실패" + " : " + JSON.stringify(result));
		});
	}	
});
</script>

</head>
<body data-ng-controller="mainController">
	<h1>test2</h1>
	<form class="form" data-ng-submit="submit()">
		<div class="form-group form-block">
			<input type="text" class="form-control" name="areacode" id="areacode" placeholder="검색어를 입력하세요" data-ng-model="areacode"> 
		</div>
		<button type="submit" class="btn btn-info btn-block">검색</button>
	</form>
	<ul class="list-group">
		<li class="container btn btn-default list-group-item" data-ng-click="info($index)" data-ng-repeat = "item in result.items">
	        Code : {{item.code}} Name : {{item.name}}
		</li>
	</ul>
</body>
</html>

















