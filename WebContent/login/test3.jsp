<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>test3.jsp</title>
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

// 				$scope.groups = [ {
// 					title : 'Dynamic Group Header - 1',
// 					content : 'Dynamic Group Body - 1'
// 				}, {
// 					title : 'Dynamic Group Header - 2',
// 					content : 'Dynamic Group Body - 2'
// 				} ];
				$scope.locals = [ {code : 1, name : "서울"}, {code : 2, name : "인천"},
			                  {code : 3, name : "대전"}, {code : 4, name : "대구"},
			                  {code : 5, name : "광주"}, {code : 6, name : "부산"},
			                  {code : 7, name : "울산"}, {code : 8, name : "세종특별자치시"},
			                  {code : 31, name : "경기도"}, {code : 32, name : "강원도"},
			                  {code : 33, name : "충청북도"}, {code : 34, name : "충청남도"},
			                  {code : 35, name : "경상북도"}, {code : 36, name : "경상남도"},
			                  {code : 37, name : "전라북도"}, {code : 38, name : "전라남도"},
			                  {code : 39, name : "제주도"} ];

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
<body>
	<div ng-controller="AccordionDemoCtrl">
		<label class="checkbox"> <input type="checkbox"
			ng-model="oneAtATime"> Please select location
		</label>
		<accordion close-others="oneAtATime"> 
		<div>
			<accordion-group
				heading="{{local.name}}" ng-repeat="local in locals">
				{{local.code}} 
			</accordion-group>
		</div>
		<accordion-group heading="Dynamic Body Content">
		<p>The body of the accordion group grows to fit the contents</p>
		<button class="btn btn-default btn-sm" ng-click="addItem()">Add
			Item</button>
		<div ng-repeat="item in items">{{item}}</div>
		</accordion-group> <accordion-group is-open="status.open"> <accordion-heading>
		I can have markup, too! <i class="pull-right glyphicon"
			ng-class="{'glyphicon-chevron-down': status.open, 'glyphicon-chevron-right': !status.open}"></i>
		</accordion-heading> This is just some content to illustrate fancy headings. </accordion-group> </accordion>
		<accordion-group is-open="status.open"> <accordion-heading>
		I can have markup, too! <i class="pull-right glyphicon"
			ng-class="{'glyphicon-chevron-down': status.open, 'glyphicon-chevron-right': !status.open}"></i>
		</accordion-heading> This is just some content to illustrate fancy headings. </accordion-group> </accordion>
	</div>
</body>
</html>

















