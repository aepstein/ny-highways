'use strict'

###*
 # @ngdoc function
 # @name nyHighwaysApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the nyHighwaysApp
###
angular.module 'nyHighwaysApp'
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
