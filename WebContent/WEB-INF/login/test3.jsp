<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/login/jspf/template.jspf"%>
<!doctype html>
<html data-ng-app="myApp">
<head>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.13/angular.js"></script>
<script
	src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.13.0.js"></script>
<script src="example.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript">
	var app = angular.module("myApp", [ "ngSanitize", "ngAnimate", "ngRoute",
			"ui.bootstrap" ]);
	app.controller("myController", function($scope) {
		if ("${msg}" != "") {
			alert("${msg}");
		}
	});
	app.controller('TabsCtrl', function($scope, $window) {
		$scope.tabs = [ {
			title : 'Dynamic Title 1',
			content : 'Dynamic content 1'
		}, {
			title : 'Dynamic Title 2',
			content : 'Dynamic content 2',
			disabled : true
		} ];

		$scope.alertMe = function() {
			setTimeout(function() {
				$window.alert('You\'ve selected the alert tab!');
			});
		};
	});
</script>
</head>
<body>

	<div data-ng-controller="TabsCtrl">
		<p>Select a tab by setting active binding to true:</p>
		<p>
			<button class="btn btn-default btn-sm"
				data-ng-click="tabs[0].active = true">Select second tab</button>
			<button class="btn btn-default btn-sm"
				data-ng-click="tabs[1].active = true">Select third tab</button>
		</p>
		<p>
			<button class="btn btn-default btn-sm"
				data-ng-click="tabs[1].disabled = ! tabs[1].disabled">Enable
				/ Disable third tab</button>
		</p>
		<hr />

		<tabset> <tab heading="Static title">Static content</tab> <tab
			data-ng-repeat="tab in tabs" heading="{{tab.title}}"
			active="tab.active" disable="tab.disabled"> {{tab.content}} </tab> <tab
			select="alertMe()"> <tab-heading> <i
			class="glyphicon glyphicon-bell"></i> Alert! </tab-heading> I've got an HTML
		heading, and a select callback. Pretty cool! </tab> </tabset>

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