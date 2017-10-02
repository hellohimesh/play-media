angular.module('admin')
  .controller('adminUploadSongsCtrl',['$scope','$state','$stateParams','adminFactory','$rootScope',function($scope,$state,$stateParams,adminFactory,$rootScope){

    $scope.playlistId = $stateParams.id;
    activate();
    function activate(){
		adminFactory.getPlaylist($scope.playlistId).then(function (response) {
			$scope.playlist = response.data;
      console.log($scope.playlist);
		},function (error) {
			 alert("There is some error. Please try later.");
			 console.log(error);
		})
	}
  $scope.action = $rootScope.serverUrl+'admin/songUpload.php?id='+$scope.playlistId;
	$scope.mimeTypes = '.jpg,.wav';
	$scope.goTo = function(x){
		$state.go(x);
	}
  $scope.myCallBackMethod = function(reponse) {
		alert(response);
	}




  }])
