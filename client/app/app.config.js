angular.module('playMedia')
  .config(['$stateProvider','$urlRouterProvider',function($stateProvider,$urlRouterProvider){

    $stateProvider
    .state('user',{
      url : '/user',
      template : "<div ui-view></div>"
    })
    .state('home',{
      url : '/home',
      templateUrl : 'user/view/home.html',
      controller : 'userHomeCtrl'
    })
    .state('userPlaylistSongs',{
      url : '/home/:id',
      templateUrl : 'user/view/playlist.html',
      controller : 'userPlaylistSongsCtrl'
    })

    .state('admin',{
      url : '/admin',
      template : "<div ui-view></div>"
    })
    .state('adminAddPlaylist',{
      url : '/admin/addPlaylist',
      templateUrl : "admin/view/home.html",
      controller : 'createPlaylistCtrl'
    })
    .state('adminAddPlaylistSongs',{
      url : '/admin/addPlaylist/:id',
      templateUrl : "admin/view/upload.html",
      controller : 'adminUploadSongsCtrl'
    })

  $urlRouterProvider.otherwise('/home');
  }])
  .run(['$rootScope',function($rootScope){
		$rootScope.serverUrl = 'http://localhost/playMedia/server/';

	}]);
