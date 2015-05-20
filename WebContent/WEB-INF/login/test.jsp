<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>test.jsp</title>
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
	<div ng-controller="AccordionDemoCtrl">
		<p>
			<button class="btn btn-default btn-sm"
				ng-click="status.open = !status.open">Toggle last panel</button>
			<button class="btn btn-default btn-sm"
				ng-click="status.isFirstDisabled = ! status.isFirstDisabled">Enable
				/ Disable first panel</button>
		</p>

		<label class="checkbox"> <input type="checkbox"
			ng-model="oneAtATime"> Open only one at a time
		</label>
		<accordion close-others="oneAtATime"> <accordion-group
			heading="Static Header, initially expanded"
			is-open="status.isFirstOpen" is-disabled="status.isFirstDisabled">
		This content is straight in the template. </accordion-group> <accordion-group
			heading="{{group.title}}" ng-repeat="group in groups">
		{{group.content}} </accordion-group> <accordion-group heading="Dynamic Body Content">
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

