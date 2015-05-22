/*
 * searchkeywordController
 */

app.controller("searchkeywordController", function($scope, $http) {
		alert("searchkeywordController");
	console.log("searchkeywordController start...");
	$scope.$parent.pageClass = 'page-searchkeyword';
	
	$scope.areacodes = [
			{
                "code": 1,
                "name": "서울",
                "rnum": 1
            },
            {
                "code": 2,
                "name": "인천",
                "rnum": 2
            },
            {
                "code": 3,
                "name": "대전",
                "rnum": 3
            }
	];
	
	var params = {
			params : { keyword : '궁궐'}
	};
	
	$scope.areacode = 2;
	$scope.convert = function(areacode) {
		return "서울" + areacode;
	};
	
	$scope.keyword = "궁궐";
	$scope.search = function() {
		var kvalue = encodeURI($scope.keyword);
		
		$http.get("../m/tour/searchkeyword?keyword=" + kvalue).success(function(result) {
			$scope.response = result.response;
			console.log(result);
		}).error(function() {
			alert("server error...");
		});
	};
	
	$scope.currentPage = 1;
	
	$scope.changePage = function() {
		alert($scope.currentPage);
		var kvalue = encodeURI($scope.keyword);
		$http.get("../m/tour/searchkeyword?keyword=" + kvalue +"&pageNo=" + $scope.currentPage).success(function(result) {
			$scope.response = result.response;
			console.log(result);
		}).error(function() {
			alert("server error...");
		});
	};
	
	
	
});
