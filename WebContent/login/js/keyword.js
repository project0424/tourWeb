/*
 * testController
 */

app.controller("keywordController", function($scope, $http, $location) {
	console.log("keywordController start...");
	alert("keywordController");
	$scope.$parent.pageClass = 'page-keyword';
	
	$scope.submit = function() {
		alert("!!!!!!!!!!!!!1");
		$http.post("../m/keyword/keyword", {keyword : $scope.keyword}).success(function(result) {
			alert("성공" + "	:	" + JSON.stringify(result));
			$scope.result = result;
		}).error(function(result) {
			alert("실패" + " : " + JSON.stringify(result));
		});
	};
	
	$scope.info = function($index) {
		var contentid = JSON.stringify($scope.result.items[$index].contentId);
		alert(id);
	}	
});