/*
 * locationController
 */

app.controller("locationController", function($scope, $http, $location) {
	console.log("locationController start...");
	alert("locationController");
	$scope.$parent.pageClass = 'page-location';
	
	$scope.oneAtATime = true;
	
	$scope.locals = [ {code : 1, name : "서울"},		{code : 2, name : "인천"},
					  {code : 3, name : "대전"},		{code : 4, name : "대구"},
					  {code : 5, name : "광주"},		{code : 6, name : "부산"},
					  {code : 7, name : "울산"},		{code : 8, name : "세종특별자치시"},
					  {code : 31, name : "경기도"},		{code : 32, name : "강원도"},
					  {code : 33, name : "충청북도"},	{code : 34, name : "충청남도"},
					  {code : 35, name : "경상북도"},	{code : 36, name : "경상남도"},
					  {code : 37, name : "전라북도"},	{code : 38, name : "전라남도"},
					  {code : 39, name : "제주도"} ];
	
	alert($scope.locals);
	
	$scope.area = function($index) {
		var code = $scope.locals[$index].code;
		alert(code);
		
		$http.post("../m/areacode/areacode", {areacode : code}).success(function(result) {
		alert("성공" + "	:	" + JSON.stringify(result));
		$scope.result = result;
		
	}).error(function(result) {
		alert("실패" + " : " + JSON.stringify(result));
		});
	};
	
	$scope.info = function($index) {
		var code = $scope.result.items[$index].code;
		alert(code);
		
		$http.post("../m/areacode/sigungu", {sigungucode : code}).success(function(result) {
		alert("성공" + "	:	" + JSON.stringify(result));
		$scope.result = result;
		$location.path("/info");
			
		}).error(function(result) {
			alert("실패" + " : " + JSON.stringify(result));
		});
	};
	
	$scope.status = {
			isFirstOpen : true,
			isFirstDisabled : false
	};
});
