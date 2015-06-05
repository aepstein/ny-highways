'use strict'

###*
 # @ngdoc function
 # @name nyHighwaysApp.controller:OperationCtrl
 # @description
 # # OperationCtrl
 # Controller of the nyHighwaysApp
###
angular.module 'nyHighwaysApp'
  .controller 'OperationCtrl', [ '$scope', '$geolocation', 'uiGmapGoogleMapApi',
  '$filter', '$http',
  ($scope,$geolocation,uiGmapGoogleMapApi,$filter,$http) ->
    $scope.map = {}
    $scope.operationTypes = [
      { code: '0111', name: 'Pothole Repair' }
      { code: '0113', name: 'Shoulder Repair' }
    ]
    $scope.employees = [
      { identifier: '1', name: 'Michael Kelley' }
      { identifier: '2', name: 'Glenn Scofield' }
      { identifier: '3', name: 'Marc Pfeifer' }
    ]
    $scope.equipmentItems = [
      { identifier: '1', name: 'Paver' }
      { identifier: '2', name: 'Hauler' }
      { identifier: '3', name: 'Hauler' }
    ]
    $scope.materials = [
      { code: '0110', name: 'Cold Patch', unit: 'tons' }
      { code: '0111', name: 'Hot Patch', unit: 'tons' }
      { code: '0112', name: 'Guard Rail', unit: 'feet' }
    ]
    $scope.addWorker = ->
      $scope.operation.workers.push { employee: null, hours: null }
    $scope.removeWorker = (i) ->
      $scope.operation.workers.splice i, 1
    $scope.addEquipmentUse = ->
      $scope.operation.equipmentUses.push { equipment: null, hours: null }
    $scope.removeEquipmentUse = (i) ->
      $scope.operation.equipmentUses.splice i, 1
    $scope.addMaterialUse = ->
      $scope.operation.materialUses.push { material: null, hours: null, unit: null }
    $scope.removeMaterialUse = (i) ->
      $scope.operation.materialUses.splice i, 1
    # uiGmapGoogleMapApi.then (maps) ->
    $scope.setRoadFromLocation = ->
      success = ( response ) ->
        $scope.operation.road = response.data.address.road
      if $scope.operation.location && !$scope.operation.road
        params =
          limit: '1'
          format: 'json'
          zoom: '18'
          lat: $scope.operation.location.coords.latitude
          lon: $scope.operation.location.coords.longitude
        promise = $http.get 'http://nominatim.openstreetmap.org/reverse',
          { params: params }
        promise.then success
    $scope.operation = { workers: [], equipmentUses: [], materialUses: [] }
    unless $scope.operation.datePerformed
      $scope.operation.datePerformed = new Date()
    for x in [1..4]
      $scope.addWorker()
      $scope.addMaterialUse() if x < 2
      $scope.addEquipmentUse() if x < 2
    $geolocation.getCurrentPosition({timeout: 60000}).then (position) ->
      $scope.operation.location = position
      $scope.setRoadFromLocation()
      $scope.map = { center: position.coords, zoom: 18 }
  ]
