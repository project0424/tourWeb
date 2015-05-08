<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/login/jspf/template.jspf"%>

<!-- login.jsp -->
<div class="topsection">
	<div>Refrigerator Management App</div>
</div>
<div class="containe-fluid topnavcontainer"></div>

<div class="container">
	<div class="jumbotron">
		<form class="form" data-ng-submit="submit()">
			<div class="form-group form-block">
				<input type="text" class="form-control" name="id" id="id"
					placeholder="Enter id" data-ng-model="id"> <input type="password"
					class="form-control" name="password" id="password"
					placeholder="Enter password" data-ng-model="password">
			</div>
			<button type="submit" class="btn btn-info btn-block">로그인</button>
		</form>
		<hr>
		<a href="/tourWeb/m/join" class="btn btn-default">회원가입</a>
	</div>
</div>

