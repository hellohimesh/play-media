angular.module('user')
	.factory('userFactory',['$q','$http','$rootScope',function($q,$http,$rootScope){
		var obj ={};
    obj.getPlaylists =function(){
      var defer = $q.defer();
      $http.post($rootScope.serverUrl+"user/getPlaylists.php")
      .then(function(response){
      defer.resolve(response);
    },function(error){
      defer.reject(error);
    });
    return defer.promise;
  }
  obj.getPlaylistSongs =function(id){
    var defer = $q.defer();
    $http.post($rootScope.serverUrl+"user/getPlaylistSongs.php?id="+id)
    .then(function(response){
    defer.resolve(response);
  },function(error){
    defer.reject(error);
  });
  return defer.promise;
}
obj.getPlaylist =function(id){
  var defer = $q.defer();
  $http.post($rootScope.serverUrl+"admin/getPlaylist.php?id="+id)
  .then(function(response){
  defer.resolve(response);
},function(error){
  defer.reject(error);
});
return defer.promise;
}
    return obj;
  }])
