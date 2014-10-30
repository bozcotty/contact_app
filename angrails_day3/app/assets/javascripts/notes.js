//= require_self
//= require_tree ./notes_app

(function() {
  var app = angular.module('NotesApp', []);
  app.config(['$httpProvider', function($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]')
    .attr('content');
    $httpProvider.defaults.headers.common.Accept = 'application/json';
  }]);
})()

// we use closures in js for IIFY - immidiately invoked function, js doesnt have
// classes and modules, so we use closures to avoid namespace collisions
//
//tools that are in the 'global namespace': angular, jquery, other libraries
