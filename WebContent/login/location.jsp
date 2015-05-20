<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/login/jspf/template.jspf"%>
<link rel="stylesheet" href="css/style.css" />

<!-- Location -->

<div class="jumbotron">
	<h1>Location</h1>
	<accordion close-others="oneAtATime">			
		<accordion-group data-ng-click="area($index)" data-ng-repeat="local in locals">
			<accordion-heading>
				{{local.name}} <i class="pull-right glyphicon" data-ng-class="{'glyphicon-chevron-down': !status.open}"></i>
			</accordion-heading>
			<ul class="list-group">
				<li class="container btn btn-default list-group-item" 
				data-ng-click="info($index)" data-ng-repeat = "item in result.items">
			        {{item.name}} {{item.code}}
				</li>
			</ul>
		</accordion-group>
	</accordion>
</div>


















