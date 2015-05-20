/*
 * locationController
 */

app.controller("categoryController", function($scope, $http, $location) {
	console.log("categoryController start...");
	alert("categoryController");
	$scope.$parent.pageClass = 'page-category';
	
	$scope.oneAtATime = true;
	$scope.oneAtATime2 = true
	
	$scope.cats = [{"code":"A01","name":"자연","rnum":1},		{"code":"A02","name":"인문(문화\/예술\/역사)","rnum":2},
	                 {"code":"A03","name":"레포츠","rnum":3},	{"code":"A04","name":"쇼핑","rnum":4},
	                 {"code":"A05","name":"음식","rnum":5},		{"code":"B02","name":"숙박","rnum":6},
	                 {"code":"C01","name":"추천코스","rnum":7}];
	
	alert($scope.cats);
	
	$scope.cat1 = function($index) {
		var code = $scope.cats[$index].code;
		alert(code);
		
		$http.post("../m/category/cat1", {cat1 : code}).success(function(result) {
		alert("성공" + "	:	" + JSON.stringify(result));
		$scope.result = result;
		
	}).error(function(result) {
		alert("실패" + " : " + JSON.stringify(result));
		});
	};
	
	$scope.cat2 = function($index) {
		var code = $scope.result.items[$index].code;
		alert(code);
		
		$http.post("../m/category/cat2", {cat2 : code}).success(function(result) {
		alert("성공" + "	:	" + JSON.stringify(result));
		$scope.result = result;
		
	}).error(function(result) {
		alert("실패" + " : " + JSON.stringify(result));
		});
	};
	
	$scope.cat3 = function($index) {
		var code = $scope.result.items[$index].code;
		alert(code);
		
		$http.post("../m/category/cat3", {cat3 : code}).success(function(result) {
		alert("성공" + "	:	" + JSON.stringify(result));
		$scope.result = result;
		
	}).error(function(result) {
		alert("실패" + " : " + JSON.stringify(result));
		});
	};
	
	$scope.info = function($index) {
		var code = $scope.result.items[$index].code;
		alert(code);
		
		$http.post("../m/category/cat3", {cat3 : code}).success(function(result) {
		alert("성공" + "	:	" + JSON.stringify(result));
		$scope.result = result;
		$location.path("/info");
			
		}).error(function(result) {
			alert("실패" + " : " + JSON.stringify(result));
		});
	};
});
