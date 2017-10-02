angular.module('user')
	.controller('userHomeCtrl', ['$scope','$state','userFactory', function($scope,$state,userFactory){

    activate();
    function activate(){
		userFactory.getPlaylists().then(function (response) {
			$scope.playlists = response.data;
      console.log($scope.playlists);
		},function (error) {
			 alert("There is some error. Please try later.");
			 console.log(error);
		})
	}
  $scope.goToPlaylist = function(x){
    $state.go('userPlaylistSongs',{'id': x});
  }


	}]);
