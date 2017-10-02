angular.module('user')
	.config(['$stateProvider','$urlRouterProvider',function($stateProvider,$urlRouterProvider){
		$stateProvider
			.state('user.home',{
				url : '/home',
				template : 'user/view/home.html',
				controller : function(){alert("hi")}
			})
}])
