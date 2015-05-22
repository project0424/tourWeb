<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/login/jspf/template.jspf"%>

<!-- info.jsp -->
<div class="jumbotron">
	<h5>{{result.items.title}}</h5>
	<img src="{{result.items.image}}">
	전화번호 : {{result.items.tel}}
	주소 : {{result.items.addr}}
	설명
	<p>{{result.items.overview}}</p>
</div>