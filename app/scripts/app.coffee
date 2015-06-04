'use strict'

###*
 # @ngdoc overview
 # @name nyHighwaysApp
 # @description
 # # nyHighwaysApp
 #
 # Main module of the application.
###
angular
  .module 'nyHighwaysApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ui.select'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/',
        templateUrl: 'views/operation.html'
        controller: 'OperationCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'
