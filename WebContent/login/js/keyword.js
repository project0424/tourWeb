/*
 * keywordController
 */

app.controller("keywordController", function($scope, $http, $location) {
	console.log("keywordController start...");
	alert("keywordController");
	$scope.$parent.pageClass = 'page-keyword';
	
	$scope.search = function() {
		var kvalue = encodeURI($scope.keyword);
		
		$http.get("../m/tour/searchkeyword?keyword=" + kvalue).success(function(result) {
			$scope.response = result.response;
			console.log(result);
			
			if (result.response.body.totalCount == 0) {
				alert("검색 결과 없음");
			}
			
			for(var i=0; i < result.response.body.totalCount; i++) {
				if(result.response.body.items.item[i].firstimage == null) {
					result.response.body.items.item[i].firstimage = "http://placehold.it/140x100";
				}
			}
			
		}).error(function() {
			alert("server error...");
		});
		alert(result);
	};
	
//	if (response.body.items.item.firstimage == null) {
//		response.body.items.item.firstimage = "http://placehold.it/140x100";
//	};
	
	$scope.currentPage = 1;
	$scope.changePage = function() {
		alert($scope.currentPage);
		var kvalue = encodeURI($scope.keyword);
		$http.get("../m/tour/searchkeyword?keyword=" + kvalue +"&pageNo=" + $scope.currentPage).success(function(result) {
			$scope.response = result.response;
			console.log(result);
			
			for(var i=0; i < result.response.body.totalCount; i++) {
				if(result.response.body.items.item[i].firstimage == null) {
					result.response.body.items.item[i].firstimage = "http://placehold.it/140x100";
				}
			}
		}).error(function() {
			alert("server error...");
		});
	};
//	$scope.submit = function() {
//		alert("!!!!!!!!!!!!!1");
//		
//		$http.post("../m/keyword/keyword", {keyword : $scope.keyword}).success(function(result) {
//			alert("성공" + "	:	" + JSON.stringify(result));
//			$scope.result = result;
//		}).error(function(result) {
//			alert("실패" + " : " + JSON.stringify(result));
//		});
//	};
//	
//	$scope.info = function($index) {
//		var contentid = $scope.result.items[$index].contentId;
//		alert("info(" + contentid + ")");
//		$http.post("../m/info/info", {contentid : contentid}).success(function(result) {
//			alert("성공" + "	:	" + JSON.stringify(result));
//			$scope.result = result;
//		}).error(function(result) {
//			alert("실패" + " : " + JSON.stringify(result));
//		});
//	}	
});