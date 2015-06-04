'use strict'

###*
 # @ngdoc function
 # @name nyHighwaysApp.controller:OperationCtrl
 # @description
 # # OperationCtrl
 # Controller of the nyHighwaysApp
###
angular.module 'nyHighwaysApp'
  .controller 'OperationCtrl', ($scope) ->
    $scope.operation = {}
    $scope.operationTypes = [
      { code: '0111', name: 'Pothole Repair' },
      { code: '0113', name: 'Shoulder Repair' }
    ]
