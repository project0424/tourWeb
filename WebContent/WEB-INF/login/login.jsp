<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/login/jspf/template.jspf"%>

<!-- login.jsp -->

<div class="topsection" align="center">
	<img src="http://placehold.it/50x50">
</div>
<br>
<div class="jumbotron">
	<form class="form" data-ng-submit="submit()">

		<div class="form-group form-block" data-inline="true">
			<input type="text" class="form-control" name="id" id="id"
				placeholder="Enter id" data-ng-model="id">
		</div>

		<div class="form-group form-block" data-inline="true">
			<input type="password" class="form-control" name="password"
				id="password" placeholder="Enter password" data-ng-model="password">
		</div>

		<hr>
		<div class="">
			<span> <input type="checkbox" name="autoLogin" value="Y"
				id="autoLogin"> <label for="autoLogin">로그인 상태유지</label>
			</span><span class="bar">|</span><span> <input type="checkbox"
				name="idSave" value="Y" id="remember"> <label for="remember">아이디
					저장</label>
			</span>
		</div>
		<hr>
		<button type="submit" class="btn btn-info btn-block">로그인</button>
		<a href="#/signup" class="btn btn-default btn-block">회원가입</a>
	</form>
	<hr>

	<a href="">아이디 찾기</a> | <a href="">비밀번호 찾기</a>
</div>


