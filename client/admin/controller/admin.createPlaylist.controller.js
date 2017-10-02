angular.module('admin')
	.controller('createPlaylistCtrl',['$scope','$state','$stateParams','adminFactory','$rootScope',function($scope,$state,$stateParams,adminFactory,$rootScope){

		$scope.addPlaylist = function(x){

		adminFactory.addPlaylist(x)
		.then(function(response){
      $scope.playlist=response.data;
      angular.element('#myModal').css('display', 'none');

		$state.go('adminAddPlaylistSongs',{ 'id' :  $scope.playlist.id});
    },function(error){
			console.error(error);
		})
	}

	getPlaylists();
  function getPlaylists(){
    adminFactory.getPlaylists()
    .then(function(response){
      $scope.playlists=response.data;
      console.log($scope.playlists);
    //$state.go('adminAddPlaylistSongs',{ 'id' :  $scope.playlist.id});
    },function(error){
      console.error(error);
    })

  }
  $scope.goToPlaylist = function(x){
    $state.go('adminAddPlaylistSongs',{ 'id' :  x.id});
    getPlaylists();
  }

}])
