/*
 * mainController
 */

app.config(function($routeProvider) {
	$routeProvider
	// home page
	.when('/', {
		templateUrl : 'home.jsp',
		controller : 'homeController'
	})

	// grid page
	.when('/grid', {
		templateUrl : 'grid.jsp',
		controller : 'gridController'
	})

	// about page
	.when('/about', {
		templateUrl : 'about.jsp',
		controller : 'aboutController'
	})

	// contact page
	.when('/contact', {
		templateUrl : 'contact.jsp',
		controller : 'contactController'
	})

	// signup page
	.when('/signup', {
		templateUrl : 'signup.jsp',
		controller : 'signupController'
	})

	// login page
	.when('/login', {
		templateUrl : 'login.jsp',
		controller : 'loginController'
	})

	// location page
	.when('/location', {
		templateUrl : 'location.jsp',
		controller : 'locationController'
	})
	
	// category page
	.when('/category', {
		templateUrl : 'category.jsp',
		controller : 'categoryController'
	})
	
	// keyword page
	.when('/keyword', {
		templateUrl : 'keyword.jsp',
		controller : 'keywordController'
	})

	// otherwise page
	.otherwise({
		redirectTo : '/'
	});

});

app.controller("mainController", function($scope, $http, $rootScope, $templateCache, $location) {
	alert("mainController");

	$rootScope.$on('$routeChangeStart', function(event, next, current) {
		if (typeof current != 'undefined') {
			$templateCache.removeAll();
			console.log("current.templateUrl=" + current.templateUrl);
			alert("current.templateUrl=" + current.templateUrl);
		}
	});

	$scope.swipeLeft = function() {
		console.log("swipeleft = " + $location.path());
	};

	$scope.swipeRight = function() {
		console.log("swipeRight = " + $location.path());
	};

	/*
	 * 로그아웃 상태 및 유저정보
	 */
	$scope.login = {
		status : false
	}

	/*
	 * 로그아웃 처리
	 */
	$scope.logout = function() {
		console.log("logout...");

		$http.get("../m/login/logout").success(function(loginstatus) {
			console.log(loginstatus);
			$scope.login = loginstatus;
		}).error(function() {
			alert("server error...");
		});

		$location.path("/home");
	};

	/*
	 * 로그인 유무 체크
	 */
	$http.get("../m/login/logincheck").success(function(loginstatus) {
		console.log("로그인 유무 체크 = " + JSON.stringify(loginstatus));
		$scope.login = loginstatus;
	}).error(function() {
		alert("server error...");
	});

	/*
	 * 지역별 검색
	 */
//	$scope.location = function() {
//		$http.post("../m/areacode/areacode", {areacode : ""}).success(function(result) {
//			alert("성공" + "	:	" + JSON.stringify(result));
//		$scope.result = result;
//		
//	}).error(function(result) {
//		alert("실패" + " : " + JSON.stringify(result));
//		});
//	};
	$scope.active = {
		categoryActive : "active",
		locationActive : "active",
		keywordActive : "active"
	};
	
	
	/*
	 * 탭
	 */
	$scope.tabs = [ {
		title : '홈',
		link : 'home'
	}, {
		title : '카테고리',
		link : 'category',
		disabled : true
	}, {
		title : '지역',
		link : 'location',
		disabled : true
	}, {
		title : '키워드',
		link : 'keyword',
		disabled : true
	} ];
	
});