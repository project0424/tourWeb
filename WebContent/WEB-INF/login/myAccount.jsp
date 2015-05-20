<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/login/jspf/template.jspf"%>
<title>myAccount.jsp</title>
</head>
<body data-ng-app="myApp" data-ng-controller="userCtrl">
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Password</th>
					<th>Repeat Password</th>
					<th>Nickname</th>
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="user in users">
					<td>
						ID : {{login.user.id}}
					</td>
					<td><input type="text" /></td>
					<td><input type="text" /></td>
					<td><input type="text" /></td>
				</tr>
			</tbody>
		</table>
		 <br> Password :  <br>
		Password : <input type="text" /> <br> Nickname : <input
			type="text" />
	</div>
</body>
</html>