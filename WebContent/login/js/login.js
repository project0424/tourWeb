/*
 * loginController
 */

app.controller("loginController", function($scope, $http, $location) {
	console.log("loginController start...");
	$scope.$parent.pageClass = 'page-login';
	alert("login");
	
	$scope.email = "";
	$scope.password = "";
	
	$scope.submit = function() {
		console.log("login submit click...");
		
		$http.post("../m/login/login", {id : $scope.id, password : $scope.password}).success(function(loginstatus) {
			console.log(loginstatus);
			if (loginstatus.status == true) {
				$scope.$parent.login = loginstatus;
				$location.path("/home");
			} else {
				alert("로그인 실패...");
			}
		}).error(function() {
			alert("server error...");
		});
		
	};
});