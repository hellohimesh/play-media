angular.module("admin")
	.config(['$stateProvider','$urlRouterProvider',function($stateProvider,$urlRouterProvider){
		$stateProvider
			.state('admin.login',{
				url : '/login',
				templateUrl : 'admin/view/login.html',

			});
}])
