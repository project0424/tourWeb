/*
 * mainController
 */

var app = angular.module("myApp", [ "ngSanitize", "ngAnimate", "ngRoute",
		"ngTouch", "ui.bootstrap"]);

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

	// myAccount page
	.when('/myAccount', {
		templateUrl : 'myAccount.jsp',
		controller : 'myAccountController'
	})

	// otherwise page
	.otherwise({
		redirectTo : '/'
	});

});

app.controller("mainController", function($scope, $http, $rootScope,
		$templateCache, $location) {
	// alert("mainController");

	$rootScope.$on('$routeChangeStart', function(event, next, current) {
		if (typeof current != 'undefined') {
			$templateCache.removeAll();
			console.log("current.templateUrl=" + current.templateUrl);
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
});

/*
 * angular-bootstrap
 */
app.controller('TabsDemoCtrl', function($scope, $window) {
	$scope.tabs = [ {
		title : 'Dynamic Title 1',
		content : 'Dynamic content 1'
	}, {
		title : 'Dynamic Title 2',
		content : 'Dynamic content 2',
		disabled : true
	} ];

	$scope.alertMe = function() {
		setTimeout(function() {
			$window.alert('You\'ve selected the alert tab!');
		});
	};
});

/*
 * angular-bootstrap2
 */
app.controller('AccordionDemoCtrl', function ($scope) {
	  $scope.oneAtATime = true;

	  $scope.groups = [
	    {
	      title: 'Dynamic Group Header - 1',
	      content: 'Dynamic Group Body - 1'
	    },
	    {
	      title: 'Dynamic Group Header - 2',
	      content: 'Dynamic Group Body - 2'
	    }
	  ];

	  $scope.items = ['Item 1', 'Item 2', 'Item 3'];

	  $scope.addItem = function() {
	    var newItemNo = $scope.items.length + 1;
	    $scope.items.push('Item ' + newItemNo);
	  };

	  $scope.status = {
	    isFirstOpen: true,
	    isFirstDisabled: false
	  };
	});
			