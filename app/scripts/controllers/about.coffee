'use strict'

###*
 # @ngdoc function
 # @name nyHighwaysApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the nyHighwaysApp
###
angular.module 'nyHighwaysApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
