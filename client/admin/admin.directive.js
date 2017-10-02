angular.module('playMedia')
 .directive('dropZone', function() {
   return function(scope, element, attrs) {
     scope.files = [];
     element.dropzone({
       url: scope.action,
       maxFilesize: 100,
       paramName: "file",
       maxThumbnailFilesize: 5,
       init: function() {
         scope.files.push({file: 'added'}); // here works
         this.on('success', function(file, json) {
         });
       }
   });

   }
 });
