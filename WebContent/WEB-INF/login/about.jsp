<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- about.jsp -->

<h1>Angular ng-view template </h1>
<h2>About</h2>

<a href="#/" class="btn btn-success btn-lg">Home</a>
<a href="#/contact" class="btn btn-danger btn-lg">Contact</a>
<hr>
<select>
	<option data-ng-repeat="local in locals"
			data-ng-change="changeLocal()"
			data-ng-model="selectedLocal"
			data-ng-selected="local.code==2" 
	value="{{local.code}}">{{local.name}}</option>
</select>