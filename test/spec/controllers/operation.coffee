'use strict'

describe 'Controller: OperationCtrl', ->

  # load the controller's module
  beforeEach module 'nyHighwaysApp'

  OperationCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    OperationCtrl = $controller 'OperationCtrl', {
      $scope: scope
    }

  # it 'should attach a list of awesomeThings to the scope', ->
  #   expect(scope.awesomeThings.length).toBe 3
