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
    'ngAnimate'
    'ngCookies'
    'ngResource'
    'ngRoute'
    'ngSanitize'
    'ngTouch'
    'ui.bootstrap'
    'ui.select'
    'ngGeolocation'
    'uiGmapgoogle-maps'
  ]
  .config [ '$routeProvider', 'uiGmapGoogleMapApiProvider',
  ($routeProvider, uiGmapGoogleMapApiProvider) ->
    uiGmapGoogleMapApiProvider.configure {
      # v: '3.17'
      # libraries: 'weather,geometry,visualization'
    }
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/operation',
        templateUrl: 'views/operation.html'
        controller: 'OperationCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'
  ]
