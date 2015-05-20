<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/login/jspf/template.jspf"%>
<link rel="stylesheet" href="css/style.css" />

<!-- Category -->

<div class="jumbotron">
	<h1>Category</h1>
	<accordion close-others="oneAtATime">			
		<accordion-group data-ng-click="cat1($index)" data-ng-repeat="cat in cats">
			<accordion-heading>
				{{cat.name}} <i class="pull-right glyphicon" data-ng-class="{'glyphicon-chevron-down': !status.open}"></i>
			</accordion-heading>
			<accordion close-others="oneAtATime2">
				<accordion-group data-ng-click="cat2($index)" data-ng-repeat="item in result.items">
					<accordion-heading>
						{{item.name}} <i class="pull-right glyphicon" data-ng-class="{'glyphicon-chevron-down': status.open}"></i>
					</accordion-heading>
					<ul class="list-group">
						<li class="container btn btn-default list-group-item" data-ng-click="info($index)" data-ng-repeat = "item in result.items">
					        {{item.name}}
						</li>
					</ul>
				</accordion-group>
			</accordion>
		</accordion-group>
	</accordion>
</div>


















