<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/login/jspf/template.jspf"%>

<!-- signUp.jsp -->
<div class="container">
	<div class="jumbotron">
		<h1>회원가입</h1>
		<p>Refrigerator 회원가입을 환영합니다.</p>
		<hr>
		<form novalidate="novalidate" name="userForm"
			data-ng-submit="userSubmit()">
			<!-- id -->
			<div class="form-group">
				<label for="id">Id</label> <input id="id" name="id"
					type="text" class="form-control" data-ng-model="id"
					data-ng-required="true" placeholder="Enter id" />
			</div>
			<!-- password -->
			<div class="form-group">
				<label for="password">Password</label> <input id="password"
					name="password" type="password" class="form-control"
					data-ng-model="password" data-ng-required="true"
					data-ng-minlength="5" placeholder="Enter password : 5자리 이상을 사용해주세요" />
			</div>
			<!-- repeat password -->
			<div class="form-group">
				<label for="password2">Repeat Password</label> <input id="password2"
					name="password2" type="password" class="form-control"
					data-ng-model="password2" data-ng-required="true"
					data-ng-minlength="5" placeholder="Enter password : 5자리 이상을 사용해주세요" />
			</div>
			<!-- nickname -->
			<div class="form-group">
				<label for="nickname">Nickname</label> <input id="nickname" name="nickname"
					type="text" class="form-control" data-ng-model="nickname"
					data-ng-required="true" placeholder="Enter nickname" />
			</div>
			<!-- submit -->
			<input type="submit" value="회원가입" class="btn btn-info btn-block"
				data-ng-disabled="!userForm.$valid" />
		</form>
	</div>
</div>

<div class="container">
	<a href="/tourWeb/m/home" class="btn btn-default btn-block">Home</a>
</div>
