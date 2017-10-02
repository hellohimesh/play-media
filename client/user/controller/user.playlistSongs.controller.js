angular.module('user')
.controller('userPlaylistSongsCtrl', ['$scope','$state','$stateParams','$rootScope','userFactory', function($scope,$state,$stateParams,$rootScope,userFactory){
$scope.playlistId = $stateParams.id;
    activate();
    function activate(){
		userFactory.getPlaylistSongs($scope.playlistId).then(function (response) {
			$scope.songs = response.data;
      console.log($scope.songs);
		},function (error) {
			 alert("There is some error. Please try later.");
			 console.log(error);
		})
	}
  getPlaylist();
  String.prototype.replaceAll = function(search, replacement) {
    var target = this;
    return target.replace(new RegExp(search, 'g'), replacement);
  };
    $scope.getName = function(x){
      return x.substring(11).replaceAll("_"," ").replace(".mp3","").replace(".MP3","");
  }
  function getPlaylist(){
  userFactory.getPlaylist($scope.playlistId).then(function (response) {
    $scope.playlist = response.data;
    console.log($scope.playlist);
  },function (error) {
     alert("There is some error. Please try later.");
     console.log(error);
  })
}
$scope.playThisSong= function(path){
  $rootScope.currentSong = path;
  
  console.log($rootScope.currentSong);
}


	}]);
