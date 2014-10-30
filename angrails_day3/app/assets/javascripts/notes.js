//= require_self
//= require_tree ./notes_app

(function() {
  var app = angular.module('NotesApp', ['ngRoute', 'ngCookies']);
  app.config(['$httpProvider', function($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]')
    .attr('content');
    $httpProvider.defaults.headers.common.Accept = 'application/json';

    // not sure this goes here but think so:
    app.config(['$routeProvider', function($(routeProvider) {
      $routeProvider
      .when('/notes', {
        controller: 'NotesCtrl',
        templateUrl: 'templates/notes_view.html'
      })
      .otherwise({
        redirectTo: '/notes'
      });
  }]);
})()

// we use closures in js for IIFY - immidiately invoked function, js doesnt have
// classes and modules, so we use closures to avoid namespace collisions
//
//tools that are in the 'global namespace': angular, jquery, other libraries
