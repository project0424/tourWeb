/*
 * signupController
 */

app.controller("signupController", function($scope, $http, $location) {
	console.log("signupController start...");
	// alert("signupController");
	$scope.$parent.pageClass = 'page-signup';
	$scope.userSubmit = function() {
		var user;
		var p1 = $scope.password;
		var p2 = $scope.password2;
		if (p1 == p2) {
			$http.post("../m/signup/signup", {
				id : $scope.id,
				password : $scope.password,
				nickname : $scope.nickname
			}).success(function(result, status) {
				alert(status + " : " + JSON.stringify(result));
				if (result.status == true) {
					alert("User 추가 성공...");
					$location.path("/");
				} else {
					alert("User 추가 실패...");
				}
				user = {
					id : result.user.id,
					password : result.user.password,
					name : result.user.nickname
				}
			}).error(function(xhr, status) {
				alert("에러입니다");
			});
		} else {
			alert("비밀번호가 일치하지 않습니다")
		}
	};
});