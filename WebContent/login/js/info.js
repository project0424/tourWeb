/*
 * keywordController
 */

app.controller("infoController", function($scope, $http, $location) {
	console.log("infoController start...");
	alert("infoController");
	$scope.$parent.pageClass = 'page-info';
	
	$scope.info = function($index) {
		var contentid = JSON.stringify($scope.result.items[$index].contentId);
		alert(info(contentid));
		$http.post("../m/info/info", {contentid : contentid}).success(function(result) {
			alert("성공" + "	:	" + JSON.stringify(result));
			$scope.result = result;
		}).error(function(result) {
			alert("실패" + " : " + JSON.stringify(result));
		});
	}	
});