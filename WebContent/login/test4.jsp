<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>test4.jsp</title>
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
			$http.post("../m/areacode/areacode", {
				areacode : $scope.areacode
			}).success(function(result) {
				alert("성공" + "	:	" + JSON.stringify(result));
				$scope.result = result;
			}).error(function(result) {
				alert("실패" + " : " + JSON.stringify(result));
			});
		};

		$scope.info = function($index) {
			var code = $scope.result.items[$index].code;
			alert(code);
			$http.post("../m/areacode/sigungu", {
				sigungucode : code
			}).success(function(result) {
				alert("성공" + "	:	" + JSON.stringify(result));
				$scope.result = result;
			}).error(function(result) {
				alert("실패" + " : " + JSON.stringify(result));
			});
		}
	});
	angular.module('ui.bootstrap').controller('AccordionDemoCtrl',
			function($scope) {
				$scope.oneAtATime = true;

				$scope.groups = [ {
					title : 'Dynamic Group Header - 1',
					content : 'Dynamic Group Body - 1'
				}, {
					title : 'Dynamic Group Header - 2',
					content : 'Dynamic Group Body - 2'
				} ];

				$scope.items = [ 'Item 1', 'Item 2', 'Item 3' ];

				$scope.addItem = function() {
					var newItemNo = $scope.items.length + 1;
					$scope.items.push('Item ' + newItemNo);
				};

				$scope.status = {
					isFirstOpen : true,
					isFirstDisabled : false
				};
			})
</script>

</head>
<body data-ng-controller="mainController">
	<h1>test4</h1>
	<form class="form" data-ng-submit="submit()">
		<div class="form-group form-block">
			<input type="text" class="form-control" name="areacode" id="areacode"
				placeholder="검색어를 입력하세요" data-ng-model="areacode">
		</div>
		<button type="submit" class="btn btn-info btn-block">검색</button>
	</form>
	<div class="btn-group" style="width: 50%">
		<button type="button" class="btn btn-default dropdown-toggle"
			data-toggle="dropdown" data-ng-click="info($index)"
			data-ng-repeat="item in result.items">
			Code : {{item.code}} Name : {{item.name}} <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu"
			data-ng-repeat="item in result.items">
			<li><a href="#"> Code : {{item.code}} Name : {{item.name}}</a></li>
		</ul>
	</div>
	<div ng-controller="AccordionDemoCtrl">
		<label class="checkbox"> <input type="checkbox"
			ng-model="oneAtATime"> Please select location
		</label>
		<accordion close-others="oneAtATime"> 
			<accordion-group
				heading="{{item.name}}" ng-repeat="item in result.items">
				{{item.name}} 
			</accordion-group>
		<accordion-group heading="Dynamic Body Content">
		<p>The body of the accordion group grows to fit the contents</p>
		<button class="btn btn-default btn-sm" ng-click="addItem()">Add
			Item</button>
		<div ng-repeat="item in items">{{item}}</div>
		</accordion-group> <accordion-group is-open="status.open"> <accordion-heading>
		I can have markup, too! <i class="pull-right glyphicon"
			ng-class="{'glyphicon-chevron-down': status.open, 'glyphicon-chevron-right': !status.open}"></i>
		</accordion-heading> This is just some content to illustrate fancy headings. </accordion-group> </accordion>
	</div>
</body>
</html>

















