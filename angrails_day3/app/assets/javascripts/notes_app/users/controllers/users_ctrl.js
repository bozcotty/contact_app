(function() {
  var app = angular.module('NotesApp');
  app.controller('UsersCtrl', ['$scope', '$http', '$cookies', '$location', function($scope, $http, $cookies) {
    $scope.create = function(user) {
      $http({
        method: 'POST',
        url: '/users',
        data: {user: user}
      })
      .success(function(data) {
        $cookies.current_user = data;
        %location.path('/notes');
        console.log('created users');
      })
      ....
    }
  }]);
})()
