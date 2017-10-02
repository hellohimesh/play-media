angular.module('admin')
	.controller('adminLoginCtrl', ['$scope','$state','adminFactory', function($scope,$state,adminFactory){

		$scope.login = function(x){
			adminFactory.doLogin(x)
				.then(function (response) {

				},function (error) {
					console.log(error);
				});
		}

	}]);
