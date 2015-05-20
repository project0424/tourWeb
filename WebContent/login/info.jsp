<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/login/jspf/template.jspf"%>

<!-- info.jsp -->
<ul class="list-group">
	<li class="container btn btn-default list-group-item"
		style="text-align: left;" data-ng-click="info($index)"
		data-ng-repeat="item in result.items"><img src="{{item.image}}"
		style="width: 5em"> {{item.contentId}} Title : {{item.title}}</li>
</ul>